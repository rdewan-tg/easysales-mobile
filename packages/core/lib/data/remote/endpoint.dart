const String loginEndPoint = '/v1/api/auth/login';
const String tokenRefreshEndPoint = '/v1/api/auth/refresh-token';
const String signUpEndPoint = '/v1/api/auth/signup';
const String forgotPasswordEndPoint = '/v1/api/auth/forgot-password';
const String meEndPoint = '/v1/api/me';
const String findDeviceSettingByDeviceIdEndPoint =
    '/v1/api/device-setting/find/{deviceId}';
const String merchandiserCustomerEndPoint =
    '/v1/api/merchandiser-customers/{DataAreaId}';
const String filterMerchandiserCustomerEndPoint =
    '/v1/api/merchandiser-customers';

const String salesCustomerEndPoint = '/v1/api/customers/{DataAreaId}';
const String filterSalesCustomerEndPoint = '/v1/api/customers';
const String uploadMerchandiserPhotoEndPoint = '/v1/api/merchandiser/photos';
const String customerAddressEndpoint = '/v1/api/addresses/{DataAreaId}';
const String filterCustomerAddressEndpoint = '/v1/api/addresses';
const String toDaySiteVisitReportEndPoint =
    '/v1/api/merchandiser/photos/report/today-unique-site-visit-report';
const String thisMonthSiteVisitReportEndPoint =
    '/v1/api/merchandiser/photos/report/this-month-site-visit-report';

// product
const String productsEndPoint = '/v1/api/items/{DataAreaId}';
// price
const String pricesEndPoint = '/v1/api/prices/{DataAreaId}';

// sales header
const String createSalesHeaderEndPoint = '/v1/api/sales-header';
const String deleteBySalesIdEndPoint = '/v1/api/sales-header/order/{salesId}';
// sales line
const String createSalesLineEndPoint = '/v1/api/sales-line';
const String createManySalesLineEndPoint = '/v1/api/sales-line/create-many';
const String lastSalesOrderIdEndPoint =
    '/v1/api/sales-header/find/max-order-id/{id}/{prefix}';
