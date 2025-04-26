from googleapiclient.discovery import build  # type: ignore # Import the Google API client discovery library
from google.oauth2 import service_account  # type: ignore # Import the service account credentials handling module
import re

# Authenticate with your service account JSON key
# Replace '../google_playservice_account.json' with the path to your service account JSON file
credentials = service_account.Credentials.from_service_account_file('../google_playservice_account.json')

# Build the Android Publisher API client with authenticated credentials
service = build('androidpublisher', 'v3', credentials=credentials)

# Define your app's package name (update with your app's package ID)
package_name = 'com.tonggarden.easysales'

# Step 1: Create a new edit session
# Edit sessions allow you to perform multiple changes as a single transaction
edit_request = service.edits().insert(packageName=package_name)
edit_response = edit_request.execute()  # Execute the request and get the response
edit_id = edit_response['id']  # Extract the edit ID from the response

# Step 2: List all available tracks for the app
# Tracks represent different testing or release channels in the Play Console
track_list_request = service.edits().tracks().list(packageName=package_name, editId=edit_id)
track_list_response = track_list_request.execute()  # Execute the request and get the response

# Extract the names of available tracks from the response
existing_tracks = [track['track'] for track in track_list_response.get('tracks', [])]

# Print the list of available tracks in the Google Play Console
print("Available tracks in Google Play Console:")
for track in existing_tracks:
    print(f"- {track}")

# Step 3: Fetch the latest release information from the 'alpha' track
# Replace 'alpha' with the desired track name if needed
track_request = service.edits().tracks().get(
    packageName=package_name,  # App's package name
    editId=edit_id,  # Edit session ID
    track='production'  # Track to fetch information from (e.g., 'production', 'alpha', 'beta', 'internal' )
)
track_response = track_request.execute()  # Execute the request and get the track details

# Extract release information from the track response
releases = track_response.get('releases', [])  # Get the list of releases for the track
if releases:
    # If releases exist, get the latest release details
    latest_release = releases[0]
    # Safely get the first version code or default to 0 if missing
    version_codes = latest_release.get('versionCodes', [])  # Get the first version code
    current_version_code = int(version_codes[0]) if version_codes else 0  # Default to 0 when absent
    current_version_name = latest_release.get('name', '0.0.1')  # Default to '0.0.1' if name is missing
    
    # Increment version code and version name
    version_code = current_version_code + 1
    version_name_parts = current_version_name.split('.')
    # version_name_parts[-1] access the last element of the list
    # Safely extract digits from the last segment and increment
    last = version_name_parts[-1]
    # print(last) - print the last segment of the version name
    # Search for the last sequence of digits in the version name
    # The regex \d+ matches any sequence of one or more digits (0-9)
    match = re.search(r"\d+", last)
    if match:
        # The int(match.group()) converts the matched substring to an integer
        last_segment = int(match.group())
        # The match.group() returns the matched substring       
        # The +1 increments the version name by one
        # Finally, the str(...) converts the integer back to a string
        version_name_parts[-1] = str(last_segment + 1)
    else:
        # If the last segment of the version name does not contain a sequence of digits
        # (i.e., it is not a number), set the last segment to '1' to indicate the first version.
        version_name_parts[-1] = '1'
    # Join the segments back into a version name
    version_name = '.'.join(version_name_parts)

    # Print outputs for GitHub Actions
    print(f"::set-output name=version_code::{version_code}")
    print(f"::set-output name=version_name::{version_name}")
else:
    # Handle the case where no releases exist
    print("::set-output name=version_code::1")
    print("::set-output name=version_name::0.0.1")
