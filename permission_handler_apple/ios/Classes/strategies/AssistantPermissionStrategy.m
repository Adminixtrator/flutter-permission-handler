//
//  Assistant.m
//  permission_handler
//
//  Created by Baptiste Dupuch (dupuchba) on Tue Sep  5 08:50:04 2023
//

#import "AssistantPermissionStrategy.h"

#if PERMISSION_ASSISTANT

@implementation AssistantPermissionStrategy

- (PermissionStatus)checkPermissionStatus:(PermissionGroup)permission {
    return PermissionStatusDenied;
}

- (void)checkServiceStatus:(PermissionGroup)permission completionHandler:(ServiceStatusHandler)completionHandler {
    completionHandler(ServiceStatusNotApplicable);
}

- (void)requestPermission:(PermissionGroup)permission completionHandler:(PermissionStatusHandler)completionHandler errorHandler:(PermissionErrorHandler)errorHandler {
    completionHandler(PermissionStatusDenied);
}

@end

#else

@implementation AssistantPermissionStrategy
@end

#endif
