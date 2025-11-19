# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> <svg class="svg-inline--fa fa-info-circle fa-w-16" style="width: 1em; vertical-align: -.125em; padding-right: .225em;" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="info-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"></path></svg> **Breaking Change !**
>
> Due to improvements of our SDK and map data, we kindly ask you to update your applications and projects with any SDK revision released starting with October 2024 in order to continue using the online Magic Earth map-related services and to continue receiving map updates.

## [2.1.3] - [7.1.25.42.ECFEC713] - 2025-11-19
### Removed

- Removed deprecated API in `AlarmContextDelegate`, `MarkerCollectionObjectRenderSettings`, `RoutePreferencesObject.h`. 

### Added

- New class available: `LogActivityFileObject` 

- New method available in `AlarmContext.h`:

  `(void)alarmContext:(nonnull AlarmContext *)alarmContext onCountryLeft:(NSString *)countryCode`
  
  `(void)alarmContext:(nonnull AlarmContext *)alarmContext onCountryEntered:(NSString *)code`  

- New method available in `GEMSdk.h`:

  `(BOOL)isInitialized`

- New method available in `GEMSdkDelegate.h`:

  `(void)onWorldwideRoadMapRefreshed`

- New method available in `LogBookmarksContext.h`:

  `(void)addActivityFiles:(nonnull NSArray < LogActivityFileObject * > *)activityFiles filePath:(nonnull NSString *)filePath`

  `(nonnull NSArray < LogActivityFileObject * > *)getActivityFiles:(nonnull NSString *)filePath;`

- New method available in `SoundContext.h`:

  `(void)setUseTtsWithLanguage:(nonnull NSString *)language completionHandler:(nonnull void(^)(BOOL success))handler`

  `(void)setUseTtsWithLanguage:(nonnull NSString *)language identifier:(nonnull NSString *)identifier completionHandler:(nonnull void(^)(BOOL success))handler`

## [2.1.2] - [7.1.25.42.DB834EFB] - 2025-10-17
### Fixed
 
- Fix related to route simulation

## [2.1.1] - [7.1.25.42.613D87EA] - 2025-10-16
### Added

- New class available: `LogBookmarksContext`, `LogUploadContext`, `LogUploadDelegate`, `LogUploadHeader`, `LogImageObject`, `RecorderContext`, `RecorderContextDelegate`, `RecorderHeader`, `RecorderConfigurationObject`.

## [2.1.0] - [7.1.25.42.DB834EFB] - 2025-10-14
### Added

- New class available: `ActivationContext`, `ActivationInfoObject`, `LandmarkBrowseSessionSettingsObject`, `ManeuverCarPlayObject`, `MarkerCollectionRenderSettingsObject`, `PushNotificationContext`, `SignpostItemObject`.

- Deprecated methods in `MapViewController.h`:

  `addMarker:(nonnull MarkerCollectionObject *)markerCollection renderSettings:(MarkerCollectionObjectRenderSettings)renderSettings`
  
  `(void)addMarker:(nonnull MarkerCollectionObject *)markerCollection renderSettings:(MarkerCollectionObjectRenderSettings)renderSettings animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL finished))handler`

- New method available in `DataSourceContext.h`:

  `(void)setPreferencesAllowRerouting:(BOOL)state`
  
- New method available in `GEMSdk.h`:

  `(SDKErrorCode)initCoreSdk:(nonnull NSString *)authorizationKey activationExceptionHandler:(void(^)(int error, NSString *details))activationExceptionHandler`
  
- New method available in `GEMSdk.h`:

  `(SDKErrorCode)initCoreSdk:(nonnull NSString *)authorizationKey activationExceptionHandler:(void(^)(int error, NSString *details))activationExceptionHandler`

- New method available in `MapViewController.h`:

  `(BOOL)isMarkerAvailable:(nonnull MarkerCollectionObject *)markerCollection`

  `(void)addMarker:(nonnull MarkerCollectionObject *)markerCollection renderSettingsObject:(nonnull MarkerCollectionRenderSettingsObject *)renderSettings`

  `(void)addMarker:(nonnull MarkerCollectionObject *)markerCollection renderSettingsObject:(nonnull MarkerCollectionRenderSettingsObject *)renderSettings animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL finished))handler`

  `(void)setTouchViewBehaviour:(TouchViewBehaviour)behaviour renderSettingsObject:(nullable MarkerCollectionRenderSettingsObject *)renderSettings completionHandler:(nullable void(^)(MarkerObject * _Nullable market))handler`

  `(SDKErrorCode)generateRouteGeometry:(nonnull NSData *)data routeRenderSettings:(nullable MarkerCollectionRenderSettingsObject *)routeSettings connectionsRenderSettings:(nullable MarkerCollectionRenderSettingsObject *)connectionsSettings`

  `(SDKErrorCode)generateNavigationInstructionGeometry:(nonnull NSData *)data renderSettingsObject:(nullable MarkerCollectionRenderSettingsObject *)renderSettings`

- New method available in `MarkerCollectionObject.h`:

  `(void)setPolylineDirArrow:(BOOL)value`

  `(BOOL)getPolylineDirArrow`  

  `(void)setPolylineDirArrowInnerColor:(nonnull UIColor *)color`
  
  `(nonnull UIColor *)getPolylineDirArrowInnerColor`  

  `(void)setPolylineDirArrowOuterColor:(nonnull UIColor *)color`
  
  `(nonnull UIColor *)getPolylineDirArrowOuterColor`
  
  `(void)setMinVisibilityZoomLevel:(int)value`
  
  `(int)getMinVisibilityZoomLevel`
  
  `(void)setMaxVisibilityZoomLevel:(int)value`
  
  `(int)getMaxVisibilityZoomLevel`
  
  `(void)setLabelGroupTextSize:(double)value`
  
  `(double)getLabelGroupTextSize`
  
  `(void)setLabelGroupTextColor:(nonnull UIColor *)color`
  
  `(nonnull UIColor *)getLabelGroupTextColor`
  
  `(void)setLabelingMode:(int)value`

  `(int)getLabelingMode
  
  `(void)setImage:(nonnull ImageObject *)object`
  
  `(nullable ImageObject*)getImage`
  
  `(void)setImageSize:(double)size`
  
  `(double)getImageSize`
  
  `(void)setPointsGroupingZoomLevel:(int)level`
  
- New method available in `NavigationContext.h`:

  `(nullable ManeuverCarPlayObject*)getManeuver:(nonnull NavigationInstructionObject*)navInstruction`

- New method available in `NavigationInstructionObject.h`:

  `(nonnull CoordinatesObject *)getReturnToRoutePosition`
  
  `(nullable UIImage*)getReturnToRouteImage:(CGSize)size colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`

  `- (nullable UIImage*)getReturnToRouteImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`

- New method available in `RoutePreferencesObject.h`:

  `(void)setAvoidGeofenceAreas:(nonnull NSArray <NSString *> *)areas`
  
  `(nonnull NSArray <NSString *> *)getAvoidGeofenceAreas`  

- New method available in `SearchContext.h`:

  `(void)setLocationHint:(nonnull RectangleGeographicAreaObject *)area`

- New method available in `SignpostDetailsObject.h`:

  `(nonnull NSArray <SignpostItemObject *> *)getItems`
  
  `(BOOL)hasBorderColor`
  
  `(nonnull UIColor*)getBorderColor`
  
## [7.1.25.27.581AF2C4] - 2025-07-02
### Added

- New class available: `GeofenceProximityAreaObject`

- New method available in `LandmarkObject.h`:

  `(void)detachFromStore`
  
  `(nullable OverlayItemObject *)getOverlayItem`
  
  `(nullable GeofenceProximityAreaObject *)getGeofenceProximityArea`    

- New methods available in `MarkerObject.h`:

  `add:(nonnull CoordinatesObject *)location`
  
- New methods available in `SearchContext.h`:

  `(void)setSearchGeofences:(BOOL)value`

- New methods available in `SoundContext.h`:

  `(void)destroy`

- New methods available in `TurnDetailsObject.h`:

  `(TurnSimplifiedType32)getTurnId32`

## [7.1.25.18.05D7ED2F] - 2025-04-30
### Added

- New method available in `GEMSdkDelegate.h`:

  `(void)authorizationKeyUpdated`
  
  `(void)onWorldwideRoadMapVersionUpdated`
  
  `(void)onWorldwideRoadMapUnsupportedCapabilities`
  
  `(void)onOnlineCacheSizeChange:(int)size`
  
- New method available in `MapViewControllerDelegate.h`:

  `(void)mapViewControllerReady:(nonnull MapViewController *)mapViewController` 
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController willRender:(ViewCameraTransitionStatus)cameraStatus`
    
- New method available in `PathObject.h`:

  `(int)getLength`
  
- New method available in `SignpostDetailsObject.h`:

  `(BOOL)hasTextColor`
  
  `(nonnull UIColor*)getTextColor`
  
  `(BOOL)hasBackgroundColor`    
  
  `(nonnull UIColor*)getBackgroundColor`
  
  ### Removed
  
- Removed method in `SocialOverlayContext.h:

  `(int)searchReportsAround:(nonnull CoordinatesObject *)location maxResults:(int)maxResults completionHandler:(nonnull void(^)(NSArray <OverlayItemPositionObject *> * _Nonnull items) )handler`
  
  `(int)searchReportsAlongRoute:(nonnull RouteObject *)routeObject maxResults:(int)maxResults completionHandler:(nonnull void(^)(NSArray <OverlayItemPositionObject *> * _Nonnull items) )handler`
  

## [7.1.25.10.5F37F03E] - 2025-03-03
### Added

- New class available: `AbstractGeometryImageObject, AbstractGeometryItemObject, AbstractGeometryObject, AlarmMonitoredAreaObject, GeographicAreaObject`

- New methods available in `AlarmContext.h`:

  `(void)monitorArea:(nonnull GeographicAreaObject *)geoArea areaId:(nonnull NSString *)identifier`

  `(void)unmonitorArea:(nonnull GeographicAreaObject *)geoArea`
 
  `(void)unmonitorAreas:(nonnull NSArray <NSString *> *)array`  

  `(void)unmonitorAllAreas`

  `(nonnull NSArray <GeographicAreaObject *> *)getCrossedBoundaries`

- New methods available in `AlarmContextDelegate.h`:

  `(void)alarmContextOnBoundaryCrossed:(nonnull AlarmContext *)alarmContext enteredArea:(nonnull NSArray <AlarmMonitoredAreaObject *> *)arrayIn exitedAreas:(nonnull NSArray <AlarmMonitoredAreaObject *> *)arrayOut`

- New methods available in `DataSourceConfigurationObject.h`:

  `(void)setImprovedPositionPreferRouteSnap:(BOOL)state`

- New methods available in `LandmarkStoreContext.h`:

  `(nonnull NSArray <LandmarkObject *> *)getLandmarksWithRectangleGeographicArea:(nonnull RectangleGeographicAreaObject*)rectangleArea categoryId:(int)categoryId`

  `(nonnull NSArray <LandmarkObject *> *)getLandmarksWithGeographicArea:(nonnull GeographicAreaObject*)geographicArea`

  `(nonnull NSArray <LandmarkObject *> *)getLandmarksWithGeographicArea:(nonnull GeographicAreaObject*)geographicArea categoryId:(int)categoryId`

- New method available in `MapViewController.h`:

  `(void)centerOnPolygonArea:(nonnull PolygonGeographicAreaObject *)area zoomLevel:(int)level animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`

  `(void)centerOnGeographicArea:(nonnull GeographicAreaObject *)area zoomLevel:(int)level animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
- New method available in `MapViewPreferencesContext.h`:

  `(void)setElevationAlphaFactor:(float)factor`

  `(float)getElevationAlphaFactor`

- New methods available in `MarkerObject.h`:

  `(instancetype)initWithGeographicArea:(nonnull GeographicAreaObject *)area`

- New method available in `PolygonGeographicAreaObject.h`:

  `(instancetype)initWithCoordinates:(nonnull NSArray <CoordinatesObject *> *)array`

- New method available in `RoutePreferencesObject.h`:

  `(TrafficAvoidanceType)getAvoidTraffic`

  `(void)setTrackResume:(BOOL)value`

  `(BOOL)getTrackResume`

  `(BOOL)getAccurateWaypointsApproach`

  `(void)setAccurateWaypointsApproach:(BOOL)state`

 - New method available in `TrafficEventObject.h`:

  `(nullable GeographicAreaObject *)getArea`

 - New method available in `TurnDetailsObject.h`:

  `(nullable AbstractGeometryObject *)getAbstractGeometry`

  `(nullable AbstractGeometryImageObject *)getAbstractGeometryImage`

## [7.1.25.3.9ED2450F] - 2025-01-15
### Added

- New class available: `OTRouteObject`

- New method available in `MapViewController.h`:

  `(void)applyStyleWithFilePath:(nonnull NSString *)filePath smoothTransition:(BOOL)smooth`

- New method available in `MapViewControllerDelegate.h`:

  `(BOOL)mapViewController:(nonnull MapViewController *)mapViewController onRenderMapScale:(NSInteger)width scaleValue:(nonnull NSString *)value scaleUnits:(nonnull NSString *)units`

- New methods available in `MapViewPreferencesContext.h`:

  `(void)showMapScale:(BOOL)status`

  `(BOOL)isMapScaleShown`

  `(void)setMapScalePosition:(CGRect)rect`

  `(CGRect)getMapScalePosition`

- New method available in `RecorderContext.h`:

  `(nonnull NSString*)getCurrentRecordPath`

- New method available in `RouteObject.h`:

  `(BOOL)isEVRoute`

  `(BOOL)isOTRoute`

  `(nullable RouteObject *)toEVRoute`

  `(nullable RouteObject *)toOTRoute`

- New members for `EBikeProfileDetails` struct:

  `float batteryCapacity`

  `float departureSoc`

  `float refSpeed`

  `bool ignoreLegalRestrictions`

## [7.1.24.48.527A3CD3] - 2024-11-27
### Added

- New methods available in `AlarmContext.h`:

  `(void)grabSafetyCameraOfflineDataWithCompletionHandler:(nonnull void(^)(BOOL success))handler`

  `(void)cancelGrabSafetyCameraOfflineData`

- New methods available in `ImageObject.h`:

  `(CGSize)getAspectRatio`

  `(BOOL)isScalable`

- New methods available in `LogBookmarksContext.h`:

  `(nonnull NSArray <NSString *> *)getLogsSorted:(LogFileSortingOrder)order sortingType:(LogFileSortingType)sortingType`

  `(SDKErrorCode)exportLog:(nonnull NSString *)filePath toFileType:(LogFileType)fileType exportedFileName:(nonnull NSString *)exportedFileName positionDistance:(double)positionDistance`

  `(SDKErrorCode)importLog:(nonnull NSString *)filePath importedFileName:(nullable NSString*)fileName`

  `(NSInteger)getLogDurationInSeconds:(nonnull NSString *)filePath`

  `(nullable NSData *)getUserMetadata:(nonnull NSString *)filePath keyString:(nonnull NSString *)keyString`

- New methods available in `MapViewController.h`:

  `(void)skipAnimation:(BOOL)jumpToDestination`

  `(nullable MapCameraObject *)getMapCamera`

  `(void)setMaxZoomLevel:(int)level`

  `(void)setMinZoomLevel:(int)level`

  `(int)getMinZoomLevel`

  `(void)setTouchViewBehaviour:(TouchViewBehaviour)behaviour completionHandler:(nullable void(^)(MarkerObject * _Nullable market))handler`

  `setTouchViewBehaviour:(TouchViewBehaviour)behaviour didStartTouchHandler:(nullable void(^)(MarkerCollectionObject * _Nullable marketCollection))startTouchHandler didFinishTouchHandler:(nullable void(^)(MarkerObject * _Nullable market))finishTouchHandler`

- New property available in `MapViewRouteRenderSettings.h`:

  `@property(nonatomic, assign) double waypointImageSize`

- New API available in `OverlayServiceContext.h`:

  `(void)grabOverlayOfflineData:(int)uid completionHandler:(nonnull void(^)(BOOL success))handler`

  `(void)cancelGrabOverlayOfflineData:(int)uid`

- New API available in `RecorderConfigurationObject.h`:

  `(void)setMinDurationSeconds:(NSUInteger)value`

- New API available in `RecorderContext.h`:

  `(SDKErrorCode)pauseRecording`

  `(SDKErrorCode)resumeRecording`

- New API available in `RoutePreferencesObject.h`:

  `(float)getFitnessFactor`

  `setFitnessFactor:(float)factor`

  `(RoutePathAlgorithmType)getPathAlgorithm`

  `(void)setPathAlgorithm:(RoutePathAlgorithmType)algorithmType`

  `(RoutePathAlgorithmFlavorType)getPathAlgorithmFlavor`

  `(void)setPathAlgorithmFlavor:(RoutePathAlgorithmFlavorType)flavorType`

- New API available in `SearchContext.h`:

  `(void)setEasyAccessOnlyResults:(BOOL)state`

  `(BOOL)getEasyAccessOnlyResults`

- New methods available in `SwiftUI.MapView`:

`(nonnull CoordinatesObject *)getCoordinates`

  `(int)getDistance`
  
  `(int)getTimestamp`

## [7.1.24.38.4443F8E9] - 2024-09-16
### Added

- New method available in `MapViewController.h`:

  `(void)setCompassInsets:(UIEdgeInsets)insets`
  
- New methods available in `MapViewPreferencesContext.h`:

  `(void)setMapLabelsContinuousRendering:(BOOL)status`
  
  `(BOOL)getMapLabelsContinuousRendering`
  
  `(BOOL)getDisableFastLoading`
  
  `(void)setDisableFastLoading:(BOOL)status`

- New methods available in `MarkerObject.h`:

  `(instancetype)initWithCircleCenter:(nonnull CoordinatesObject*)coordinates radius:(int)radius`

  `(instancetype)initWithRectangleShapeCenter:(nonnull CoordinatesObject *)coordinates horizRadius:(int)horizRadius vertRadius:(int)vertRadius`
  
  `(instancetype)initWithRectangleFirstCorner:(nonnull CoordinatesObject *)corner1 secondCorner:(nonnull CoordinatesObject*)corner2`

- New methods available in `TimeDistanceCoordinatesObject.h`:

  `(nonnull CoordinatesObject *)getCoordinates`
  
  `(int)getDistance`
  
  `(int)getTimestamp`

## [7.1.24.20.093088C8] - 2024-05-27
### Added
  
- New methods available in `MapViewController.h`:

  `(BOOL)hasTerrainTopography`    
  
  `(double)getAltitude:(nonnull CoordinatesObject *)location;`
  
  `(void)setWatermarkText:(nonnull NSString *)line1 line2:(nonnull NSString *)line2`
  
- New method available in `MapViewControllerDelegate.h`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didTapCompass:(FollowPositionMapRotationMode)mode`
 
- New methods available in `GEMKit.MapBase`:

  `func mapCompassSize(_ size: CoreFoundation.CGFloat) -> GEMKit.MapBase`
  
  `func mapUserInteraction(_ state: Swift.Bool) -> GEMKit.MapBase`
  
  `func didTapCompass(_ action: @escaping (_ mode: GEMKit.FollowPositionMapRotationMode) -> Swift.Void) -> GEMKit.MapBase`
  
  `func onConnectedStatusUpdated(_ action: @escaping (_ connected: Swift.Bool) -> Swift.Void) -> GEMKit.MapBase`
  
  `func onWorldwideRoadMapSupportEnabled(_ action: @escaping () -> Swift.Void) -> GEMKit.MapBase`
  
  `func onWorldwideRoadMapSupportDisabled(_ action: @escaping (_ reason: GEMKit.ReasonType) -> Swift.Void) -> GEMKit.MapBase`
  
  `func onWorldwideRoadMapUpdateStarted(_ action: @escaping () -> Swift.Void) -> GEMKit.MapBase`
  
  `func onWorldwideRoadMapUpdateFinished(_ action: @escaping (_ success: Swift.Bool) -> Swift.Void) -> GEMKit.MapBase`

- New methods available in `GEMKit.MapProxy`:

  `func setPositionTrackerVisibility(_ visibility: Swift.Bool)`
  
  `func setPositionTrackerScaleFactor(_ factor: Swift.Double)`

## [7.1.24.20.8B92211B] - 2024-05-15
### Fixed

- Fix related to route simulation

## [7.1.24.20.5A74CA04] - 2024-05-14
### Added
  
- New method available in `DataSourceContext.h`:

  `(nonnull NSString*)getLogPath`
  
- New method available in `DriverAssistanceContext.h`:

  `(instancetype)initWithContext:(nonnull DataSourceContext *)context tuningParameters:(nullable MagicADASTuningParameters *)tuningParameters`
  
- GEMKit for SwiftUI new APIs: `MapBase`, `MapReader`, `MapProvider` and `MapCoordinator`.

## [7.1.24.17.D3970963] - 2024-04-23
### Added

- New methods available in `GEMSdk.h`:

  `(nullable NSData *)compress:(nonnull NSData *)data`
  
  `(nullable NSData *)uncompress:(nonnull NSData *)data`
  
  `(BOOL)isLogSilent`

- New methods available in `NavigationInstructionObject.h`:

  `(void)presentRoutes:(nonnull NSArray<RouteObject *> *)array withTraffic:(nullable TrafficContext *)trafficContext showSummary:(BOOL)summary displayMode:(RouteDisplayMode)mode animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(void)centerOnRoutes:(nonnull NSArray<RouteObject *> *)array displayMode:(RouteDisplayMode)mode rectangle:(CGRect)rect animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
   
  `(SDKErrorCode)generateRouteGeometry:(nonnull NSData *)data routeRenderSettings:(MarkerObjectRenderSettings)renderSettings connectionsRenderSettings:(MarkerObjectRenderSettings)connectionsSettings`
  
  `(void)removeRouteGeometry`
  
  `(SDKErrorCode)generateNavigationInstructionGeometry:(nonnull NSData *)data renderSettings:(MarkerObjectRenderSettings)renderSettings`  
  
  `(void)removeNavigationInstructionGeometry`

 - New methods available in `NavigationInstructionObject.h`:

  `(float)getBatterySoC`
  
  `(nullable NSData *)exportAs:(PathFileFormat)format withCompresion:(BOOL)compressed`

- New methods available in `RoutePreferencesObject.h`:

  `(void)setBuildConnections:(BOOL)state maxLengthM:(int)maxLengthM`
  
  `(BOOL)getBuildConnections`
   
  `(int)getBuildConnectionsMaxLength`

- New methods available in `SwiftUI.MapView`:

  `func present(highlights: [GEMKit.LandmarkObject], settings: GEMKit.HighlightRenderSettings, highlightId: Swift.Int = 0, duration: Swift.Double = -1, action: ((_ finished: Swift.Bool) -> Swift.Void)? = nil)`
  
  `func remove(highlightId: Swift.Int)`
   
  `func removeAllHighlights()`
  
  `func present(routes: [GEMKit.RouteObject], bubbleSummary: Swift.Bool = false, trafficContext: GEMKit.TrafficContext? = nil, displayMode: GEMKit.RouteDisplayMode = .full, duration: Swift.Double = -1, action: ((_ finished: Swift.Bool) -> Swift.Void)? = nil)`
  
  `func remove(routes: [GEMKit.RouteObject])`
   
  `func removeAllRoutes()`
  
  `func centerOn(routes: [GEMKit.RouteObject], displayMode: GEMKit.RouteDisplayMode = .full, rectangle: CoreFoundation.CGRect = CGRect.zero, duration: Swift.Double = 0, action: ((_ finished: Swift.Bool) -> Swift.Void)? = nil)`
  
  `func setMain(route: GEMKit.RouteObject)`
   
  `func isMain(route: GEMKit.RouteObject) -> Swift.Bool`
   
  `func getMainRoute() -> GEMKit.RouteObject?`

### Fixed

- Xcode Preview crash for MapView.

## [7.1.24.16.F295FF8E] - 2024-04-16
### Added
- GEMKit for SwiftUI is now available.

### Changed

- New methods available in `MapViewController.h`:

  `(void)centerOnCoordinates:(nonnull CoordinatesObject *)location zoomLevel:(int)level point:(CGPoint)point mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL finished))handler`
  
  `(void)addMarker:(nonnull MarkerCollectionObject *)markerCollection renderSettings:(MarkerCollectionObjectRenderSettings)renderSettings animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL finished))handler`
   
  `(void)presentHighlights:(nonnull NSArray<LandmarkObject *> *)highlights settings:(nonnull HighlightRenderSettings *)settings highlightId:(int)highlightId animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL finished))handler`
   
- New methods available in `MapViewControllerDelegate.h`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectLandmarks:(nonnull NSArray <LandmarkObject *> *)landmarks onTouchPoint:(CGPoint)point`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectLandmarks:(nonnull NSArray <LandmarkObject *> *)landmarks onLongTouchPoint:(CGPoint)point`
   
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectRoutes:(nonnull NSArray<RouteObject *> *)routes onTouchPoint:(CGPoint)point`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectOverlays:(nonnull NSArray<OverlayItemObject *> *)overlays onTouchPoint:(CGPoint)point`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectOverlays:(nonnull NSArray<OverlayItemObject *> *)overlays onLongTouchPoint:(CGPoint)point`  
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectTrafficEvents:(nonnull NSArray<TrafficEventObject *> *)events onTouchPoint:(CGPoint)point`  

  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectTrafficEvents:(nonnull NSArray<TrafficEventObject *> *)events onLongTouchPoint:(CGPoint)point`
  
- New methods available in `RouteInstructionObject.h`:

  `(BOOL)hasRoadInfo`
  
  `(nonnull NSArray <RoadInfoObject *> *)getRoadInfo`
   
  `(nullable UIImage*)getRoadInfoImage:(CGSize)size`

## [7.1.24.13.6FE96C8C] - 2024-04-02
### Changed

- SDK contains now Privacy Nutrition Label.

- New method available in `CameraRenderViewController.h`:

  `(void)renderWithMagicADAS:(nullable MagicADASContext*)context`

- New method available in `ContentStoreObject.h`:

  `(void)downloadWithAllowCellularNetwork:(BOOL)allowCellularNetwork progressHandler:(nonnull void(^)(int progress))progressHandler priority:(ContentDownloadThreadPriority)priority completionHandler:(nonnull void(^)(BOOL success))completionHandler`
 
- New methods available in `DataSourceContext.h`:

  `(nullable instancetype)initDummyPlayback`
  
  `(nullable instancetype)initWithFilePath:(nonnull NSString *)filePath`
  
  `(nullable instancetype)initWithRoute:(nonnull RouteObject *)route`
   
  `(nullable instancetype)initWithExternalSource:(nonnull DataSourceContext *)dataSource`
  
  `(nullable instancetype)initWithExternalDataTypes:(nonnull NSArray < NSNumber *> *)dataTypes`
  
  `(nonnull NSString*)getDataTypeDescription:(DataType)type`
  
  `(nonnull NSArray <NSNumber *> *)getAvailableDataTypes`
  
  `(nullable DataObject *)getLatestData:(DataType)type`
  
  `(void)stopDelegateNotifications`
  
  `(BOOL)pushData:(nonnull DataObject *)dataObject`
  
- New methods available in `DataSourceContextDelegate.h`:

  `(void)dataSourceContext:(nonnull DataSourceContext *)dataSourceContext onNewData:(nonnull DataObject *)dataObject`

- New methods available in `DriverAssistanceContext.h`:

  `(SDKErrorCode)createSensorDataLoggerWithSecondsToKeep:(int)secondsToKeep recordCameraFrames:(BOOL)recordCameraFrames`
  
  `(SDKErrorCode)saveSensorDataLog:(NSString *)outputDir logName:(NSString *)logName`

- New methods available in `FollowPositionPreferencesContext.h`:

  `(void)setTouchHandlerModifyHorizontalAngleLimits:(nonnull NSArray <NSNumber *> *)horizAngleLimits`
  
  `(nonnull NSArray <NSNumber *> *)getTouchHandlerModifyHorizontalAngleLimits`
  
  `(void)setTouchHandlerModifyVerticalAngleLimits:(nonnull NSArray <NSNumber *> *)horizAngleLimits`
  
  `(nonnull NSArray <NSNumber *> *)getTouchHandlerModifyVerticalAngleLimits`
  
  `(void)setTouchHandlerModifyDistanceLimits:(nonnull NSArray <NSNumber *> *)horizAngleLimits`
  
  `(nonnull NSArray <NSNumber *> *)getTouchHandlerModifyDistanceLimits`

- New methods available in `GEMSdk.h`:

  `(BOOL)initCoreSdk:(NSString*)authorizationKey`
  
  `(SDKErrorCode)initCoreSdk:(nonnull NSString *)authorizationKey language:(nonnull NSString *)language completionHandler:( void(^)(SDKErrorCode) )handler`
  
  `(void)setMapLanguage:(MapLanguageType)type`
  
  `(MapLanguageType)getMapLanguage`
 
- New methods available in `MagicADASContext.h`:

  `(BOOL)setVanishingPointPosition:(int)vanishingPointX vanishingPointY:(int)vanishingPointY vanishingPointZ:(int)vanishingPointZ`
  
  `(BOOL)setVehicleHoodPosition:(int)verticalOffset confidence:(float)confidence`
  
  `(void)destroy`
  
  `(void)resetCalibrationParameters`

  `(void)attachRecorderConfiguration:(nonnull RecorderConfigurationObject *)configuration`
  
  `(void)detachRecorderConfiguration:(nonnull RecorderConfigurationObject *)configuration`
  
  `(SDKErrorCode)createSensorDataLoggerWithSecondsToKeep:(int)secondsToKeep recordCameraFrames:(BOOL)recordCameraFrames`
  
  `(SDKErrorCode)saveSensorDataLog:(NSString *)outputDir logName:(NSString *)logName`

- New methods available in `MagicADASContextDelegate.h`:

  `(void)magicADASContext:(nonnull MagicADASContext *)context onHeadwayWarningEvent:(HeadwayWarningEvent)event obstacle:(ObstacleObject)vehicle timestamp:(NSInteger)timestamp`
  
  `(void)magicADASContext:(nonnull MagicADASContext *)context onForwardCollisionWarningEvent:(ForwardCollisionWarningEvent)event obstacle:(ObstacleObject)vehicle timestamp:(NSInteger)timestamp`
  
  `(void)magicADASContext:(nonnull MagicADASContext *)context onPedestrianCollisionWarningEvent:(PedestrianCollisionWarningEvent)event obstacle:(ObstacleObject)vehicle timestamp:(NSInteger)timestamp`
  
  `(void)magicADASContext:(nonnull MagicADASContext *)context onStopAndGoAssistEvent:(StopAndGoAssistEvent)event obstacle:(ObstacleObject)vehicle timestamp:(NSInteger)timestamp`

- All delegate methods from `MagicADASContextDelegate.h` are now optional.

 - New methods available in `MapViewController.h`:

  `(BOOL)isDefaultPositionTrackerVisible`
  
  `(BOOL)isDefaultPositionTrackerVisible:(CGRect)rectangle`
 
 - New methods available in `MapViewControllerDelegate.h`:

  `(BOOL)shouldSelectLandmark:(nonnull MapViewController *)mapViewController`
  
  `(BOOL)shouldSelectStreets:(nonnull MapViewController *)mapViewController`
  
  `(BOOL)shouldSelectRoute:(nonnull MapViewController *)mapViewController`
  
  `(BOOL)shouldSelectOverlays:(nonnull MapViewController *)mapViewController`
  
  `(BOOL)shouldSelectTrafficEvents:(nonnull MapViewController *)mapViewController`

 - New property available in `MapViewRouteRenderSettings.h`:

  `RouteLineType lineType;`

- New method available in `NavigationContext.h`:
  
  `(BOOL)isCalculatingRoute`

 - New methods available in `NavigationInstructionObject.h`:

  `(nullable RouteInstructionObject *)getNextInstruction`
  
  `(nullable RouteInstructionObject *)getNextNextInstruction`

 - New methods available in `PositionObject.h`:

  ```
  (nullable PositionObject *)createPosition:(NSInteger)timestamp
                                  latitude:(double)latitude longitude:(double)longitude altitude:(double)altitude
                                    course:(double)course
                                     speed:(double)speed
                             speedAccuracy:(double)speedAccuracy
                        horizontalAccuracy:(double)horizontalAccuracy
                          verticalAccuracy:(double)verticalAccuracy
                            courseAccuracy:(double)courseAccuracy
  ```

  `(nullable RouteInstructionObject *)getNextNextInstruction`
  
  `(BOOL)hasRoadLocalization`
  
  `(nonnull NSString*)getRoadAddressFieldNameWithType:(AddressSearchFieldType)type`  
  
  `(int)getRoadModifier`
  
  `(double)getRoadSpeedLimit`
  
  `(nonnull NSArray <RoadInfoObject *> *)getRoadInfo`
  
  `(nullable UIImage*)getRoadCodeImage:(CGSize)size`
  
  `(nullable UIImage*)getRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`
  
 - New methods available in `RouteInstructionObject.h`:

  `(BOOL)isExit`
  
  `(nonnull NSString *)getExitDetails`
  
  `(BOOL)isCommon`
  
  `(BOOL)isEV`
  
 - New methods available in `RouteObject.h`:

  `(nonnull NSArray<LandmarkObject *> *)getWaypoints:(RouteWaypointsOption)option`
  
  `(nonnull NSArray <NSString *> *)getDominantRoads`
  
  `(nullable PathObject *)getRouteTrack`

  `(nullable SearchableParameterListObject *)getExtraInfo`

  `(void)setExtraInfo:(nonnull SearchableParameterListObject *)list`
  
 - New methods available in `RoutePreferencesObject.h`:

  `(BOOL)getAllowOnlineCalculation`
  
  `(void)setAllowOnlineCalculation:(BOOL)state`

 - New method available in `TrafficEventObject.h`:

  `(nullable UIImage*)getImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`

 - New method available in `TurnDetailsObject.h`:

  `(TurnSimplifiedType64)getTurnId64`

- New classes available: `AccelerationObject`, `CameraObject`, `DataObject`, `EVRouteObject`, `RotationObject`, `RouteObjectDelegate`

- New SwiftUI struct available: `MapView`

## [7.1.24.3.755A6098] - 2024-01-15
### Changed

- New methods available in `DriverAssistanceContext.h`:

  `(void)attachRecorderConfiguration:(nonnull RecorderConfigurationObject *)configuration`
  
  `(void)detachRecorderConfiguration:(nonnull RecorderConfigurationObject *)configuration`

- New method available in `GEMSdk.h`:

  `(SDKErrorCode)getStripePublicKeyInTestMode:(BOOL)testMode completionHandler:(nonnull void(^)(NSString *session, SDKErrorCode error))handler`
  
  `(SDKErrorCode)getStripeSessionInTestMode:(BOOL)testMode amount:(double)amount currency:(nonnull NSString *)currency completionHandler:(nonnull void(^)(NSString *session, SDKErrorCode error))handler`

- New method available in `MapViewController.h`:

  `(void)setOnMapViewRendered:(nonnull void (^)(ViewDataTransitionStatus status, ViewCameraTransitionStatus cameratatus))handler`
  
  `(void)resetOnMapViewRenderedCompletion`
  
  `(void)centerOnRoutes:(nonnull NSArray<RouteObject *> *)array displayMode:(RouteDisplayMode)mode animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(nullable UIImage *)snapshotImageWithSize:(CGSize)size captureRect:(CGRect)rect`
  
- New method available in `MapViewPreferencesContext.h`:

  `(BOOL)getMapLabelsFading`
  
  `(void)setMapLabelsFading:(BOOL)status`

## [7.1.23.47.08560DD1] - 2023-11-24
### Changed

- New methods available in `MapStyleContext.h`:

  `(nullable ContentStoreObject *)getItemById:(NSInteger)contentId`
  
  `(void)refreshContentStore`

- New method available in `MapViewController.h`:

  `(nullable CoordinatesObject *)getPositionTrackerCoordinates`
  
  `(void)setPositionTrackerCoordinates:(nonnull CoordinatesObject *)coordinates`
  
  `(CameraOrientationAngles)getPositionTrackerOrientation`
  
  `(void)setPositionTrackerOrientation:(CameraOrientationAngles)orientation`
  
  `(BOOL)getPositionTrackerVisibility`
  
  `(void)setPositionTrackerVisibility:(BOOL)state`
  
  `(CGRect)getPositionTrackerScreenRect`
  
  `(nullable NSData *)saveStatePositionTracker`
  
  `(SDKErrorCode)restoreStatePositionTracker:(nonnull NSData *)data`
  
  `(double)getTrackingObjectHeading`
  
  `(double)getTrackingObjectPitch`
  
  `(double)getTrackingObjectDistance`
  
  `(double)getTrackingObjectZoomFactor`

- New method available in `MapViewControllerDelegate.h`:

  `(void)mapViewController:(nonnull MapViewController *)mapViewController onDoubleTouch:(CGPoint)position`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onTwoTouches:(CGPoint)position`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onShove:(double)pointersAngleDeg initial:(CGPoint)initial start:(CGPoint)start end:(CGPoint)end`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectTrafficEvents:(nonnull NSArray<TrafficEventObject *> *)events`  

- New method available in `NavigationContext.h`:

  `(SDKErrorCode)setRouteRoadBlock:(nonnull RouteInstructionObject *)object`
  
  `(void)resetRouteRoadBlocks`
  
  `(nonnull TransferStatisticsContext *)getTransferStatistics`
  
  `(SDKErrorCode)skipNextIntermediateDestination`
  
- New method available in `NavigationContextDelegate.h`:

  `(void)navigationContext:(nonnull NavigationContext *)navigationContext onSkipNextIntermediateDestinationDetected:(BOOL)state`

- New method available in `PositionObject.h`:

  `(BOOL)hasTerrainData`
  
  `(double)getTerrainAltitude`
  
  `(double)getTerrainSlope`

- New method available in `SoundContext.h`:

  `(BOOL)isSessionInterrupted`

- New method available in `TimeDistanceObject.h`:

  `(NSString*)getFormattedDistance:(int)value`
  
  `(NSString*)getFormattedDistanceUnit:(int)value`

- New method available in `TrafficContext.h`:

  `(nullable TrafficEventObject *)addPersistentRoadblock:(nonnull CircleGeographicAreaObject*)circleArea startTime:(nonnull TimeObject *)startUTC expireTime:(nonnull TimeObject *)expireUTC transportMode:(RouteTransportMode)transportMode identifier:(nonnull NSString *)identifier`

- New method available in `TrafficEventObject.h`:

  `(TrafficEventImpactZone)getImpactZone`
  
  `(BOOL)isActive`
  
  `(BOOL)isExpired`

- New classes available: CircleGeographicAreaObject, SoundContextDelegate.

## [7.1.23.40.6789DC8F] - 2023-10-02
### Changed

- New methods available in `LandmarkStoreContext.h`:

  `(nonnull NSArray <LandmarkObject *> *)getLandmarksWithRectangleGeographicArea:(nonnull RectangleGeographicAreaObject*)rectangle categoryId:(int)categoryId`
  
  `(nullable NSURL *)getPreviewUrl`
  
- New method available in `LandmarkStoreContextCollection.h`:

  `(void)clear`

- New method available in `MapViewController.h`:

  `(nonnull NSArray <NSNumber *> *)getVisibleRouteInterval:(nonnull RouteObject *)route rect:(CGRect)rect`

- New method available in `PositionContext.h`:

  `(PositionDataType)getSourceType`
  
  `(void)setSpeedMultiplier:(float)value`

- New method available in `RoutePreferencesObject.h`:

  `(void)setEmergencyVehicleMode:(BOOL)mode extraFreedom:(int)extraFreedom`
  
  `(double)getDepartureHeading`
  
  `(double)getDepartureHeadingAccuracy`
  
  `(void)setDepartureHeading:(double)head accuracy:(double)accuracy`

- New method available in `SearchContext.h`:

  `(nullable OverlayMutableCollectionObject *)geOverlayMutableCollection`

- New classes available: IntentsContext, OverlayMutableCollectionObject.


## [7.1.23.35.9E3DBD80] - 2023-08-31
### Changed

- New method available in `MapViewController.h`:

  `(nonnull NSArray <OverlayItemObject *> *)getCursorSelectionOverlayItems`

- New methods available in `OverlayItemObject.h`:

  `(nullable OverlayInfoObject *)getOverlayInfo`
  
  `(nullable NSURL *)getPreviewUrl`
  
  `(nonnull NSString *)getPreviewData:(PreviewDataType)type`
  
  `(nullable NSValue *)searchInPreviewDataSocialReportParameterType:(SocialReportParameterType)parameterType`
  
  `(BOOL)hasPreviewExtendedData`
  
  `(void)getPreviewExtendedDataWithCompletionHandler:(nonnull void(^)(SearchableParameterListObject *parametersList))handler`
  
  `(void)cancelGetPreviewExtendedDataWithCompletionHandler:(nonnull void(^)(BOOL finished))handler`
  
  `(int)getCategoryId`

- New methods available in `RoutePreferencesObject.h`:

  `(void)setRouteRanges:(nonnull NSArray <NSNumber *> *)array quality:(int)quality`
  
  `(nonnull NSArray <NSNumber *> *)getRouteRanges`
  
  `(int)getRouteRangesQuality`

- New methods available in `RouteTerrainProfileObject.h`:

  `(nonnull NSArray <RoadSteepSectionObject *> *)getSteepSections:(NSArray <NSNumber *> *)steepnessIntervals`
  
  `(float)getElevationChartMinValueY`
  
  `(float)getElevationChartMaxValueY`
  
- New class available: SearchableParameterListObject.
  
- Bug fixing and improvements.

## [7.1.23.24.F818CE1B] - 2023-06-14
### Changed

- New method available in `MapsContext.h`:

  `(nonnull NSString*)getSizeFormatted:(double)value`
  
- New methods available in `OverlayItemObject.h`:

  `(nullable NSValue *)searchInPreviewDataSafetyCameraParameterType:(SafetyCameraParameterType)parameterType`
  
  `(void)resetCacheImage`

- New methods available in `SoundContext.h`:

  `(void)updateSessionWithAudioOutput:(AudioOutput)audioOutput`
  
  `(void)setDelay:(int)value`
  
  `(int)getDelay`

- New classes available: TimezoneContext, TimezoneResultObject.

- Bug fixing and improvements.

## [7.1.23.21.0B8B1AC2] - 2023-05-25
### Changed

- New methods available in `MapViewController.h`:

  `(void)addMarker:(nonnull MarkerCollectionObject *)markerCollection renderSettings:(MarkerCollectionObjectRenderSettings)renderSettings`

  `(void)setTouchViewBehaviour:(TouchViewBehaviour)behaviour renderSettings:(MarkerCollectionObjectRenderSettings)renderSettings completionHandler:(nullable void(^)(NSArray <CoordinatesObject *> *))handler`

- New methods available in `MarkerObject`:

  `(nonnull NSArray <CoordinatesObject *> *)getCoordinates:(int)part`
  
  `(void)setCoordinates:(nonnull NSArray < CoordinatesObject*> *)array`
  
  `(void)setCoordinates:(nonnull NSArray < CoordinatesObject*> *)array part:(int)part`
  
  `(void)add:(nonnull CoordinatesObject *)location index:(int)index part:(int)part`
  
  `(void)deleleFromIndex:(int)index part:(int)part`
  
  `(void)update:(nonnull CoordinatesObject *)location index:(int)index part:(int)part`

- Bug fixing and improvements.

## [7.1.23.20.D1E234B6] - 2023-05-18
### Added

- New method available in `DataSourceContext.h`:

  `(void)setLoopMode:(BOOL)value`

- New methods available in `HumanVoiceContext.h`:

  `(BOOL)isContentPreloaded`
  
  `(void)preloadContentWithCompletionHandler:(void(^)(BOOL success))handler`

- New method available in `ImageObject.h`:

  `(instancetype)initWithDataBuffer:(nonnull NSData *)data format:(ImageFormat)format`

- New methods available in `LandmarkObject.h`:

  `(void)setImageData:(nonnull NSData *)data format:(ImageFormat)format`
   
  `(void)resetCacheImage`

- New methods available in `LandmarkStoreContext.h`:

  `(void)importLandmarks:(nonnull NSString *)filePath format:(LandmarkImportFileFormat)format progressHandler:(nonnull void(^)(float progress))progressHandler completionHandler:(nonnull void(^)(SDKErrorCode code))completionHandler`
  
  `- (void)importLandmarks:(nonnull NSString *)filePath format:(LandmarkImportFileFormat)format categoryId:(int)categoryId progressHandler:(nonnull void(^)(float progress))progressHandler completionHandler:(nonnull void(^)(SDKErrorCode code))completionHandler`
  
- New method available in `MagicADASContextDelegate.h`:

  `(void)magicADASContext:(nonnull MagicADASContext *)context onLaneData:(float)position timestamp:(NSInteger)timestamp`

- New methods available in `MapsContext.h`:

  `(BOOL)isContentPreloaded`
  
  `(void)preloadContentWithCompletionHandler:(void(^)(BOOL success))handler`

- New methods available in `MapStyleContext.h`:

  `(BOOL)isContentPreloaded`
  
  `(void)preloadContentWithCompletionHandler:(void(^)(BOOL success))handler`
  
- New methods available in `MapViewController.h`:

  `(BOOL)isDefaultFollowingPosition`
  
  `(double)getPitchInDegrees`
  
  `(double)getMapScale`
  
  `(void)setDebugEdgeAreaVisible:(BOOL)state`
  
  `(void)setTouchViewBehaviour:(TouchViewBehaviour)behaviour completionHandler:(nullable void(^)(NSArray <CoordinatesObject *> *))handler`    
  
  `(TouchViewBehaviour)getTouchViewBehaviour`
  
  `(void)showMapLogo`
  
  `(void)hideMapLogo`
  
- New method available in `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onPinch:(CGPoint)startPoint1 startPoint2:(CGPoint)startPoint2 toPoint1:(CGPoint)endPoint1 toPoint2:(CGPoint)endPoint2 center:(CGPoint)center`

- Deprecated methods in `GEMSdkDelegate.h`:

  `(void)mapViewController:(nonnull MapViewController *)mapViewController onRotatePoint:(CGPoint)startPoint1 startPoint2:(CGPoint)startPoint2 toPoint1:(CGPoint)endPoint1 toPoint2:(CGPoint)endPoint2 center:(CGPoint)center delta:(double)delta`

  `(void)mapViewController:(nonnull MapViewController *)mapViewController onPinch:(CGPoint)startPoint1 startPoint2:(CGPoint)startPoint2 toPoint1:(CGPoint)endPoint1 toPoint2:(CGPoint)endPoint2`

 - New method available in `RouteBookmarksObject`:
  
  `(nullable LandmarkObject *)setWaypointTrackData:(nonnull PathObject *)pathObject`

 - New methods available in `RoutePreferencesObject`:
  
  `(void)setAccurateTrackMatch:(BOOL)value`
  
  `(BOOL)getAccurateTrackMatch`

 - New methods available in `NavigationInstructionObject`:
  
  `(nullable UIImage*)getCurrentRoadCodeImage:(CGSize)size limit:(int)limit`
  
  `(nullable UIImage*)getCurrentRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi limit:(int)limit`
  
  `(nullable UIImage*)getNextRoadCodeImage:(CGSize)size limit:(int)limit`

  `(nullable UIImage*)getNextRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi limit:(int)limit`
  
  `(nullable UIImage*)getNextNextRoadCodeImage:(CGSize)size limit:(int)limit`
  
  `(nullable UIImage*)getNextNextRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi limit:(int)limit`

## [7.1.23.12.D3E4D7BA] - 2023-03-21
### Added

- New methods available in `GEMSdk.h`:

  `(void)setTilesMaxSpace:(int)maxSpace`
  
  `(int)getTilesMaxSpace`
  
  `(void)deactivateDebugLogger`

- New methods available in `AlarmContext`:

  `(SDKErrorCode)enableSocialReportsWithCategory:(int)categUid`
  
  `(SDKErrorCode)disableSocialReportsWithCategory:(int)categUid`
  
  `(BOOL)isSocialReportsEnabledWithCategory:(int)categUid`

- New method available in `DriverAssistanceContext`:

  `(instancetype)initWithContext:(nonnull DataSourceContext *)context configuration:(MagicADASInitConfiguration)configuration`

- New methods available in `FollowPositionPreferencesContext`:

  `(void)setTouchHandlerModifyPersistent:(BOOL)persistent`
  
  `(BOOL)getTouchHandlerModifyPersistent`

- New categories available in `GenericCategoriesContext`:

  `GenericCategoryTypeHydrants`
  
  `GenericCategoryTypeEmergencyServicesSupport`
  
  `GenericCategoryTypeCivilEmergencyInfrastructure`

- New method available in `ImageObject`:

  `(nullable UIImage*)renderImageWithSize:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`

- New method available in `LandmarkCategoryObject`:

  `(nullable UIImage *)getImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`

- New method available in `LandmarkObject`:

  `(nullable UIImage*)getLandmarkImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`

- New methods available in `MapViewController`:

  `(void)setFontModifiersScale:(CGFloat)value boldStyle:(BOOL)state`
  
  `(void)setTextureScaleFactor:(CGFloat)value`
  
  `(nonnull NSArray <LandmarkObject *> *)getHighlight:(int)highlightId`
  
  `(void)centerOnRoutes:(nonnull NSArray<RouteObject *> *)array displayMode:(RouteDisplayMode)mode rectangle:(CGRect)rect animationDuration:(NSTimeInterval)duration`
  
  `(void)refreshRoutesWithEdgeAreaInsets:(UIEdgeInsets)insets`
  
  `(void)centerOnLocation:(nonnull LandmarkObject *)landmark rectangle:(CGRect)rect animationDuration:(NSTimeInterval)duration`  
  
- New method available in `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didUpdateMapAngle:(double)angle`

- New methods available in `MapViewPreferencesContext`:
  
  `(nullable MapViewRouteRenderSettings *)getRenderSettings:(nonnull RouteObject *)routeObject`
  
  `(nonnull NSArray <MapViewRouteObject *> *)getMapViewRoutes`
  
- New property isavailable in `MapViewRouteRenderSettings`:
  
  `imageSize`
  
- New method available in `NavigationContext`:
  
  `(nullable RouteObject *)getNavigationRoute`

- New method available in `NavigationContextDelegate`:

  `(void)navigationContext:(nonnull NavigationContext *)navigationContext navigationInstructionUpdatedForRoute:(nonnull RouteObject *)route updatedEvents:(int)events`

- New methods available in `NavigationInstructionObject`:
  
  `(nullable UIImage*)getSignpostImage:(CGSize)size border:(NSInteger)border roundCorners:(BOOL)round rows:(NSInteger)rows`
  
  `(nullable UIImage*)getSignpostImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi border:(NSInteger)border roundCorners:(BOOL)round rows:(NSInteger)rows`
  
  `(nullable UIImage*)getCurrentRoadCodeImage:(CGSize)size`
  
  `(nullable UIImage*)getCurrentRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`
  
  `(nullable UIImage*)getNextRoadCodeImage:(CGSize)size`
  
  `(nullable UIImage*)getNextRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`
  
  `(nullable UIImage*)getNextTurnImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`
  
  `(nullable UIImage*)getNextTurnImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`
  
  `(nonnull NSString*)getNextNextStreetName`
  
  `(BOOL)hasNextNextRoadInfo`
  
  `(nullable UIImage*)getNextNextRoadCodeImage:(CGSize)size`
  
  `(nullable UIImage*)getNextNextRoadCodeImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi`
  
  `(nonnull NSArray <RoadInfoObject *> *)getNextNextRoadInformation`
  
  `(nullable UIImage*)getNextNextTurnImage:(CGSize)size scale:(CGFloat)scale`
  
  `(nullable UIImage*)getNextNextTurnImage:(CGSize)size colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`
  
  `(nullable UIImage*)getNextNextTurnImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`
   
  `BOOL)hasLaneInfo`
  
  `(nullable UIImage*)getLaneImage:(CGSize)size backgroundColor:(nonnull UIColor *)backgroundColor activeColor:(nonnull UIColor *)activeColor inactiveColor:(nonnull UIColor *)inactiveColor`
  
  `(nullable UIImage*)getLaneImage:(CGSize)size scale:(CGFloat)scale ppi:(NSInteger)ppi backgroundColor:(nonnull UIColor *)backgroundColor activeColor:(nonnull UIColor *)activeColor inactiveColor:(nonnull UIColor *)inactiveColor`
  
  `(nonnull NSString*)getNextNextTurnInstructionFormatted`
  
  `(nonnull NSString*)getDistanceToNextNextTurnFormatted`
  
  `(nonnull NSString*)getDistanceToNextNextTurnUnitFormatted`
  
  `(nonnull NSString*)getCurrentStreetSpeedLimitFormatted`

- New methods available in `NavigationContextDelegate`:

  `(void)setBikeProfile:(BikeProfile)profile withEBikeProfileDetails:(EBikeProfileDetails)eBikeProfileDetails`
  
  `(EBikeProfileDetails)getEBikeProfileDetails`
  
  `(EBikeProfileDetails)getDefaultEBikeProfile`
  
  `(void)setStrictTrackFollow:(BOOL)state`
  
  `(BOOL)getStrictTrackFollow`

- New methods available in `SearchContext`:

  `(nullable LandmarkStoreContextCollection *)getLandmarkStoreCollection`
  
  `(BOOL)isSearchOnlyOnboardEnabled`
  
  `(int)getThresholdDistance`
  
  `(BOOL)removeCategory:(nonnull LandmarkCategoryObject*)category`
  
  `(BOOL)removeAllCategories`
  
  `(BOOL)getAllowFuzzyResults`
  
  `(void)setEstimateMissingHouseNumbers:(BOOL)state`
  
  `(BOOL)getEstimateMissingHouseNumbers`
  
  `(void)cancelAddressSearch`
  
  `(void)cancelAddressSearchCountries`
  
- New method available in `SocialReportsOverlayCategoryObject`:

  `(nullable NSValue *)searchInPreviewData:(SocialReportCategoryParameterType)parameterType`
  
- New methods available in `SoundContext`:

  `(void)playFileType:(FileAudioType)type`
  
  `(void)playWarningAlert:(DriverAssistanceAudioFile)audioFile`

- New method available in `TimeDistanceObject`:

  `(nonnull NSMeasurement <NSUnitLength *> *)getTotalDistanceMeasurement`

### Changed
- Renamed class `RoadSafetyAlertsContext` into `MagicADASContext`.

- Renamed class `RoadSafetyAlertsContextDelegate` into `MagicADASContextDelegate`.

## [7.1.23.2.F5465C47] - 2023-01-11
### Added

- Example app with projection can be found here: `D3Scene/D3Scene.xcworkspace/Projections`

- New methods available in `GEMSdk.h`:

  `(void)useSystemTimer`

  `(void)useDisplayLink`

- New method available in `GEMSdkDelegate.h`:

  `(void)onConnectionStatusUpdated:(BOOL)connected`

- Deprecated method in `GEMSdkDelegate.h`:

  `(void)onlineConnectionStatusChanged:(OnlineConnectionStatus)status __attribute__((deprecated("Please use 'onConnectionStatusUpdated' instead")))`

- New methods available in `LandmarkStoreContext.h`:

  `(BOOL)updateLandmark:(nonnull LandmarkObject*)landmark`

  `(nonnull NSString*)getFilePath`

  `(void)importLandmarks:(nonnull NSString *)filePath format:(LandmarkImportFileFormat)format completionHandler:(nonnull void(^)(SDKErrorCode code))handler`

  `(void)cancelImportLandmarks`

- New methods available in `MapViewController.h`:

  `(void)setCompassSize:(CGFloat)size`

  `(void)scrollMap:(CGPoint)translation`

  `(void)flingMap:(CGPoint)velocity`

- New methods available in `MapViewPreferencesContext.h`:

  `(CGRect)getFocusViewport`

  `(void)setFocusViewport:(CGRect)rect`

- New properties available in `MapViewRouteRenderSettings.h`:

  `waypointTextSize`, `waypointTextInnerColor`, `waypointTextOuterColor`   

- New methods available in `RouteBookmarksObject.h`:

  `(void)setAutoDeleteMode:(BOOL)mode`
  
  `(BOOL)getAutoDeleteMode`

- New methods available in `RoutePreferencesObject.h`:

  `(void)setIgnoreRestrictionsOverTrack:(BOOL)state`
  
  `(BOOL)getIgnoreRestrictionsOverTrack`
  
  `(void)setEmergencyVehicleMode:(BOOL)state`
  
  `(BOOL)getEmergencyVehicleMode`

- New methods available in `RecorderContext.h`:

  `(NSUInteger)addUserData:(NSUInteger)dataTypeIdentifier buffer:(nonnull NSData *)data`
  
  `(void)addADASCalibrationConfiguration:(nonnull DriverAssistanceContext *)context`

- Removed deprecated compatibility alias in `CoordinatesObject.h`: `GeoLocation`

- `LandmarkObject` now supports `NSSecureCoding` protocol. This means that the object can now be encode/decode.

## [7.1.22.46.8999C03E] - 2022-11-14
### Added

- New feature available: Coordinates Projections. The SDK supports now the following projections types: W3W ( what3words ), Military Grid Reference System, British National Grid, Lambert 93, Universal Transverse Mercator and Gauss-Krueger.

- Projection API: `ProjectionContext`, `ProjectionObject`, `ProjectionW3WObject`, `ProjectionMGRSObject`, `ProjectionLAMObject`, `ProjectionBNGObject`, `ProjectionGKObject`, `ProjectionUTMObject`, `ProjectionWGS84Object`.

- Example app with projection can be found here: `D3Scene/D3Scene.xcworkspace/Projections`

- New method available in `DriverAssistanceContext.h`:

  `(instancetype)initWithContext:(nonnull DataSourceContext *)context configuration:(RoadSafetyAlertsInitConfiguration)configuration`

## [7.1.22.43.A866AF6C] - 2022-10-27
### Added

- New methods available in `DataSourceConfigurationObject.h`:

  `(void)setImprovedPositionSnapToMapLinkThresholdVehicle:(NSInteger)threshold`
  
  `(void)setImprovedPositionSnapToMapLinkThresholdBike:(NSInteger)threshold`

## [7.1.22.41.9C5833F1] - 2022-10-13
### Changed

- Solved app crash on iPhone Simulator with x86_64 arch (Intel Macs).

- `NavigationContextDelegate` is now optional.

## [7.1.22.41.6B0D8D54] - 2022-10-10
### Added

- New method available in `ContentStoreObject.h`:

  `(void)downloadWithAllowCellularNetwork:(BOOL)allowCellularNetwork progressHandler:(nonnull void(^)(int progress))progressHandler completionHandler:(nonnull void(^)(BOOL success))completionHandler`

- Solved memory leak in map view.

## [7.1.22.39.4A2FB489] - 2022-09-27
### Added

- New method available in `SearchContext.h`:

  `(void)searchAroundWithQuery:(nonnull NSString*)query location:(nonnull CoordinatesObject *)location completionHandler:(nonnull void(^)(NSArray<LandmarkObject *> *array))handler`

## [7.1.22.31.C4AB7AB1] - 2022-08-04
### Added

- GEMKit SDK now contains the following architectures: ios-arm64, ios-arm64_x86_64-maccatalyst, ios-arm64_x86_64-simulator. This means that the Sdk can run now on iPhone Simulators and also on Mac Catalyst projects.

- New method available in `MapViewController.h`:

  `(CGRect)getViewport;`
  
  `(MapViewPerspective)getPerspective`
  
  `(void)centerOnPolygonArea:(nonnull PolygonGeographicAreaObject *)area zoomLevel:(int)level animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
  - New method available in `CameraRenderViewController.h`:

  `(BOOL)isRenderActive`
  
- New method available in `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didRender:(ViewDataTransitionStatus)dataStatus cameraTransitionStatus:(ViewCameraTransitionStatus)cameraStatus`

- New methods available in `PathObject`:
  
  `(instancetype)initWithDataBuffer:(nonnull NSData *)data format:(PathFileFormat)format`
  
  `(nullable NSData *)exportAs:(PathFileFormat)format`
  
- New methods available in `RouteObject`:
  
  `(nullable NSData *)exportAs:(PathFileFormat)format`
  
  `(nullable RoutePreferencesObject *)getPreferences`

- New method available in `SoundContext`:
  
  `(void)setUseTtsWithLanguage:(nonnull NSString *)language completionHandler:(nonnull void(^)(BOOL success))handler`

- New classes available: `PolygonGeographicAreaObject`
  
- Renamed class `ExceptionHandler.h` into `GEMExceptionHandler`.

- Deprecated class `GeoLocation.h`. Please use `CoordinatesObject` instead.

## [7.1.22.18.D57E5A51] - 2022-06-30
### Added

- New method available in `GEMSdk.h`:

  `(BOOL)initSdk:(nonnull NSString *)authorizationKey language:(nonnull NSString *)language languageTTS:(nonnull NSString *)languageTTS`

- Deprecated methods in `MapViewController.h`:

  `(void)centerOnGeoLocation:(nonnull GeoLocation *)location zoomLevel:(int)level animationDuration:(NSTimeInterval)duration`
  
  `(void)centerOnGeoLocation:(nonnull GeoLocation *)location zoomLevel:(int)level mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration`
  
  `(void)centerOnGeoLocation:(nonnull GeoLocation *)location zoomLevel:(int)level point:(CGPoint)point mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration`

- Deprecated methods in `LandmarkObject.h`:

  `(nonnull GeoLocation*)getLandmarkGeoLocation`
  
  `(void)setLandmarkGeoLocation:(nonnull GeoLocation *)location`

- New method available in `ContentStoreObject.h`:

  `(BOOL)isNightStyle`

- New methods available in `GenericCategoriesContext.h`:

  `(nullable LandmarkCategoryObject *)getCategory:(GenericCategoryType)categoryType`
  
  `(nonnull NSArray <LandmarkCategoryObject *> *)getPoiCategories:(int)genericCategory`
  
  `(nullable LandmarkCategoryObject *)getGenericCategory:(int)poiCategory`
  
  `(int)getLandmarkStoreId`

- Removed method in `GenericCategoriesContext.h:

  `(nonnull LandmarkCategoryObject *)getLandmarkCategoryObjectWithType:(GenericCategoryType)categoryType`

- New method available in `LogBookmarksContext.h`:

  `(BOOL)isMetadataAvailable:(nonnull NSString *)filePath`

- New methods available in `MapViewController.h`:

  `(BOOL)isRenderActive`
  
  `(void)stopFollowingPositionWithRestoreCameraMode:(BOOL)restoreCameraMode`
  
  `(void)centerOnCoordinates:(nonnull GeoLocation *)location zoomLevel:(int)level animationDuration:(NSTimeInterval)duration`
  
  `(void)centerOnCoordinates:(nonnull GeoLocation *)location zoomLevel:(int)level mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration`
  
  `(void)centerOnCoordinates:(nonnull GeoLocation *)location zoomLevel:(int)level point:(CGPoint)point mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration`      

- New enum available in `MapViewHeader.h`:

  `MapViewTouchGestures`

- New methods available in `MapViewPreferencesContext.h`:

  `(nullable LandmarkStoreContextCollection *)getLandmarkStoreCollection`
  
  `(BOOL)getTrafficVisibility`
  
  `(SDKErrorCode)setTrafficVisibility:(BOOL)state`
  
  `(SDKErrorCode)enableTouchGesture:(MapViewTouchGestures)gesture enable:(BOOL)state`
  
  `(SDKErrorCode)enableTouchGestures:(NSInteger)gestures enable:(BOOL)state`
  
  `(BOOL)isTouchGestureEnabled:(MapViewTouchGestures)gesture`
  
  `(NSInteger)getEnabledTouchGestures`

- New methods available in `TrafficContext.h`:

  `(TrafficOnlineRestrictions)getOnlineServiceRestrictions:(nonnull GeoLocation *)location`
  
  `(nonnull TransferStatisticsContext*)getTransferStatistics`
  
  `(nullable TrafficEventObject *)addPersistentRoadblock:(nonnull NSArray <GeoLocation *> *)array startTime:(nonnull TimeObject *)startUTC expireTime:(nonnull TimeObject *)expireUTC transportMode:(RouteTransportMode)transportMode`

  `(void)removePersistentRoadblock:(nonnull GeoLocation *)location`
  
  `(void)removeAllPersistentRoadblocks`
  
  `(nonnull NSArray < RouteTrafficEventObject *> *)getPersistentRoadblocks`
  
  `(void)removeUserRoadblock:(nonnull TrafficEventObject *)event`
  
  `(void)startPersistentRoadblockNotification`
  
  `(void)stopPersistentRoadblockNotification` 
  
- New classes available:

  `DriverBehaviourContext`
   
  `DriverBehaviourAnalysisObject`
   
  `DrivingScoresObject`
  
  `LandmarkPositionObject`
  
  `LandmarkStoreContextCollection`
  
  `LandmarkStoreContextService`
   
  `MappedDrivingEventObject`
   
  `PersistentRoadblockDelegate`
  
  `OverlayCollectionObject`
  
  `OverlayHeader`
  
  `OverlayInfoObject`
  
  `OverlayItemPositionObject`
  
  `OverlayServiceContext`
  
  `SocialReportsOverlayInfoObject`
  
  `TrafficEventObject`
   
  `TransferStatisticsContext`
  
## [7.1.22.18.0A8870F1] - 2022-05-04
### Added

- New method available in `CameraRenderViewController.h`:

  `(BOOL)isRenderingDriverAssistance;`

- New methods available in `DataSourceContext.h`:

  `(DataSourceOrigin)getOrigin`
  
  `(TemperatureLevel)getTemperatureLevel`
  
  `(double)getTemperatureDegrees`
  
  `(SDKErrorCode)setMockDataWithPosition:(nullable MockPositionObject *)positionObject`
  
  `(BOOL)isMockData:(DataType)type`

- New method available in `DataSourceContextDelegate.h`:

  `(void)dataSourceContext:(nonnull DataSourceContext *)dataSourceContext onTemperatureChanged:(TemperatureLevel)level degreee:(double)degree`
  
  `(void)dataSourceContext:(nonnull DataSourceContext *)dataSourceContext onDeviceMountedChanged:(BOOL)isMounted isPortraitMode:(BOOL)isPortrait`
  
- New classes available: LandmarkStoreCollectionObject, MapViewRouteObject, MapViewRouteRenderSettings.h, MockPositionObject.

- New methods available in `GeoLocation.h`:

  `(nonnull instancetype)coordinatesWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude`
  
  `(double)getAzimuth:(nonnull GeoLocation*)point`
  
- New method available in `LandmarkStoreContext.h`:

  `(instancetype)initWithIdentifier:(int)identifier`

- New methods available in `LandmarkStoreContext.h`:

  `(CGPoint)transformWgsToScreen:(nonnull GeoLocation *)location`
  
  `(nonnull NSArray <RectangleGeographicAreaObject *> *)transformScreenRectToWgs:(CGRect)rect`
  
- New methods available in `MapViewPreferencesContext.h`:

  `(nullable LandmarkStoreCollectionObject *)getLandmarkStores`
  
  `(nullable PathCollectionObject *)getPaths`
  
  `(nullable MarkerCollectionObject *)getMarkers`
  
  `(nonnull MapViewRouteRenderSettings *)getRenderSettings:(nonnull RouteObject *)routeObject`

  `(void)setRenderSettings:(nonnull MapViewRouteRenderSettings *)settings route:(nonnull RouteObject *)routeObject`
  
- New method available in `PathObject.h`:

  `(nullable GeoLocation *)getCoordinateAtPercent:(double)percent`
  
- New methods available in `RoutePreferencesObject.h`:

  `(int)getMinimumTransferTimeInMinutes`
  
  `(void)setMinimumTransferTimeInMinutes:(int)value`
  
  `(unsigned int)getMaximumTransferTimeInMinutes`
  
  `(void)setMaximumTransferTimeInMinutes:(unsigned int)value`

## [7.1.22.8.A6D2863A] - 2022-04-01
### Added

- New method available in `GEMSdk.h`:

  `(void)logMessage:(nonnull NSString*)string`

- New methods available in `MapViewController.h`:

  `(nonnull GeoLocation *)getCursorWgsPosition`
  
  `(BOOL)isFollowingPositionTouchHandlerModified`
  
  `(nullable PathCollectionObject *)getPaths`
  
  `(void)setFlatPositionTracker`
  
  `(void)setPositionTrackerScaleFactor:(double)factor`
  
  `(double)getPositionTrackerScaleFactor`
  
  `(double)getPositionTrackerMaxScaleFactor`
  
  `(void)customizePositionTrackerGlTF:(nonnull NSData *)data`

- New methods available in `MapViewPreferencesContext`:

  `(int)routesCollectionSize`
  
  `(nullable RouteObject *)getRoute:(int)index`
  
  `(int)indexOf:(nonnull RouteObject *)route`
  
  `(BOOL)isMainRoute:(nonnull RouteObject *)routeObject`
  
  `(nullable RouteObject *)getMainRoute`
  
  `(void)setMainRoute:(nonnull RouteObject *)routeObject`
  
  `(void)setRouteLabel:(nonnull RouteObject *)routeObject label:(nonnull NSString *)string`
  
  `(nullable NSString *)getRouteLabel:(nonnull RouteObject *)routeObject`
  
  `(nonnull NSArray <ImageObject *> *)getRouteImages:(nonnull RouteObject *)routeObject`
  
  `(void)setRouteImages:(nonnull RouteObject *)routeObject images:(nonnull NSArray <UIImage *> *)images`
  
  `(BOOL)addRoute:(nonnull RouteObject *)routeObject isMainRoute:(BOOL)isMainRoute label:(nullable NSString *)label images:(nullable NSArray <UIImage *> *)images`
  
  `(void)hideRouteLabel:(nonnull RouteObject *)routeObject`
  
  `(void)removeRoute:(nonnull RouteObject *)routeObject`
  
  `(BOOL)containsRoute:(nonnull RouteObject *)routeObject`
  
  `(void)clearRoutes`

- New method available in `NavigationContext`:

  `(void)calculateRouteWithWaypoints:(nonnull NSArray<LandmarkObject *> *)array statusHandler:(nonnull void(^)(RouteStatus))statusHandler completionHandler:(nonnull void(^)(NSArray<RouteObject *> *array))completionHandler`

- New method available in `PathObject`:

  `(instancetype)initWithCoordinates:(nonnull NSArray <GeoLocation *> *)coordinates`

- New method available in `RecorderContext`:

  `(BOOL)isAudioRecording`

- New methods available in `RouteBookmarksObject`:

  `(instancetype)initWithFileName:(nonnull NSString *)file folderName:(nullable NSString *)folder`
  
  `(nullable LandmarkObject *)setWaypointTrackData:(nonnull LandmarkObject *)landmarkObject path:(nonnull PathObject *)pathObject`  

- Removed method from `RouteBookmarksObject`:

  `(instancetype)initWithName:(nonnull NSString *)name`

- New method available in `RouteObject`:

  `(nullable RouteObject *)toPTRoute`

- New method available in `RouteSegmentObject`:

  `(nonnull NSArray<PTRouteInstructionObject *> *)getPTInstructions`

- New method available in `LogBookmarksContext.h`:

  `(void)exportLogToPhotos:(nonnull NSString *)filePath albumName:(nonnull NSString *)albumName completionHandler:(nonnull void(^)(SDKErrorCode code))handler`

- New methods available in `DriverAssistanceContextDelegate`:

  `(void)driverAssistance:(nonnull DriverAssistanceContext *)context ttsWarning:(nonnull NSString *)string severity:(AlertSeverity)severity`
  
  `(void)driverAssistance:(nonnull DriverAssistanceContext *)context audioWarning:(DriverAssistanceAudioFile)audioFile severity:(AlertSeverity)severity`

## [7.1.22.8.A17891D0] - 2022-02-21
### Added

- New methods available in `FollowPositionPreferencesContext`:

  `(void)setMapRotationMode:(FollowPositionMapRotationMode)mode angle:(double)angle objectFollowMap:(BOOL)followMap`
  
  `(FollowPositionMapRotationMode)getMapRotationMode`
  
  `(BOOL)isTrackObjectFollowingMapRotation`
  
  `(void)setAccuracyCircleVisibility:(BOOL)value`
  
  `(BOOL)isAccuracyCircleVisible`

- New methods available in `LandmarkObject`:

  `(void)setExtraInfo:(nonnull NSArray <NSString *> *)array`
  
  `(nonnull NSString *)findExtraInfo:(nonnull NSString *)string`
  
- New method available in `LogBookmarksContext`:

  `(nonnull NSArray < NSDictionary <NSString *, NSObject *> *> *)getSoundMarks:(nonnull NSString *)filePath;`
  
- New methods available in `MapViewController`:
  
  `centerOnGeoLocation:(GeoLocation *)location zoomLevel:(int)level mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration`
  
  `centerOnGeoLocation:(GeoLocation *)location zoomLevel:(int)level point:(CGPoint)point mapAngle:(double)mapAngle viewAngle:(double)viewAngle animationDuration:(NSTimeInterval)duration`
  
  `(void)presentHighlights:(nonnull NSArray<LandmarkObject *> *)highlights settings:(nonnull HighlightRenderSettings *)settings`
  
  `(void)presentHighlights:(nonnull NSArray<LandmarkObject *> *)highlights settings:(nonnull HighlightRenderSettings *)settings highlightId:(int)highlightId`
  
  `(void)removeHighlight:(int)highlightId`
  
  `(nullable RectangleGeographicAreaObject *)getHighlightArea`
  
  `(nullable RectangleGeographicAreaObject *)getHighlightArea:(int)highlightId`
  
  - New methods available in `RecorderContext`:

  `(void)startAudioRecording`
  
  `(void)stopAudioRecording`
  
  - New method available in `SoundContext`:
  
  `(void)updateSessionWithAudioCategory:(AudioCategory)audioCategory`  
  
- The following methods are now deprecated in `MapViewController`:
  
  `(void)presentHighlight:(nonnull LandmarkObject *)landmark contourColor:(nullable UIColor*)color centerLayout:(BOOL)center animationDuration:(NSTimeInterval)duration`
  
  `(void)presentHighlights:(nonnull NSArray<LandmarkObject *> *)highlights animationDuration:(NSTimeInterval)duration`
  
  `(void)setHighlightPinImage:(nonnull UIImage *)image`
  
  `(void)setHighlightPinSize:(NSInteger)size`
  
## [7.1.22.6.44F1F5EF] - 2022-02-08
### Added

- New methods available in `GEMSdk`:
  
  `(nonnull NSArray <NSNumber *> *)getCapabilities`
  
  `(BOOL)isWiFiConnected`
  
  `(BOOL)isMobileDataConnected`
  
- New methods available in `MapViewController`:
  
  `(void)setDefaultPositionTracker`
  
  `(void)customizePositionTracker:(nonnull NSData *)textureData`
  
  `(void)customizePositionTracker:(nonnull NSData *)objData material:(nonnull NSData *)matData`
  
  `(nonnull MapViewPreferencesContext *)getPreferences`
  
- Removed methods from `MapViewController`:
  
  `(int)getZoomLevelWithFollowMode:(CameraFollowMode)mode`
  
  `(void)setZoomLevel:(int)level point:(CGPoint)point followMode:(CameraFollowMode)mode animationDuration:(NSTimeInterval)duration`  
  
  `(double)getTiltAngleWithFollowMode:(CameraFollowMode)followMode`
  
- New method available in `RecorderContext`:
  
  `(NSUInteger)getDiskSpaceUsedPerSecond`
  
- New method available in `RecorderConfigurationObject`:
  
  `(void)setDeviceModel:(nonnull NSString *)model`

- New method available in `RecorderContextDelegate`:
  
  `recorderContext:(nonnull RecorderContext *)recorderContext recordingCompleted:(nonnull NSString *)path`
  
- New classes available: `FollowPositionPreferencesContext`, `MapViewPreferencesContext`, `DataSourcePlaybackContext`, `ExceptionHandler`, `DriverAssistanceContext`.

## [7.1.22.1.89E158C4] - 2022-01-07
### Added

- New methods available in `DataSourceContext`:
  
  `(instancetype)initWithFilePath:(nonnull NSString *)filePath`
  
  `(BOOL)setConfiguration:(nonnull DataSourceConfigurationObject *)configuration forType:(DataType)type`
  
  `seekTo:(NSInteger)valueMs`

  `(NSInteger)getCurrentPosition`

  `(NSInteger)getDuration`

- New methods available in `DataSourceContextDelegate`:
  
  `(void)dataSourceContext:(nonnull DataSourceContext *)dataSourceContext onProgressChanged:(NSInteger)progress`
  
  `(void)dataSourceContext:(nonnull DataSourceContext *)dataSourceContext onPlayingStatusChanged:(DataType)type status:(PlayingStatus)playingStatus`

- New method available in `MapViewController`:
  
  `(nullable LandmarkObject *)getClosestAddress:(nonnull GeoLocation *)location radius:(int)radius`
  
  `(MapDetailsQualityLevel)getMapDetailsQualityLevel`

- New methods available in `PositionContext`:
  
  `(BOOL)startProcessingLocationServicesDataWithDataSourceConfigurationObject:(nonnull DataSourceConfigurationObject *)configuration`
  
  `(BOOL)clean`
  
  `(BOOL)startProcessingLogData:(nonnull DataSourceContext *)context`
  
  `(BOOL)stopProcessingLogData`
  
  `(BOOL)isProcessingLogData`
  
- The following methods are now deprecated in `PositionContext`:

  `(BOOL)startProcessingLocationServicesDataWithAllowBackgroundLocationUpdates:(BOOL)allowBackgroundLocationUpdates`

- New methods available in `RoadSafetyAlertsContext`:
  
  `(instancetype)initWithContext:(nonnull DataSourceContext *)context`
  
  `(instancetype)initWithContext:(nonnull DataSourceContext *)context useMapMatchedPosition:(BOOL)useMapMatchedPosition type:(ProcessorExecutionType)processorType`
  
- Implemented support for `CameraRenderViewController`.
  
- Implemented support for `DataSourceConfigurationObject`.
  
- Implemented support for `LogPlayingContext`, `LogUploadContext`, `LogUploadDelegate`, `LogUploadHeader`.
  
- Implemented support for `RecorderConfigurationObject`, `RecorderContext`, `RecorderContextDelegate`, `RecorderHeader`
  
- Removed the following file `ImageDrawerController`.
  
## [7.1.21.47.6C765E74] - 2021-11-24
### Added
 
- New methods available in `MapViewController`:
  
  `setMapDetailsQualityLevel:(MapDetailsQualityLevel)level`
  
  `(MapDetailsQualityLevel)getMapDetailsQualityLevel`
  
- New methods available in `NavigationContext`:
  
  `(void)simulateWithRoute:(nonnull RouteObject *)route speedMultiplier:(float)speed completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(void)navigateWithRoute:(nonnull RouteObject *)route completionHandler:(nonnull void(^)(BOOL success))handler`
  
- New method available in `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectOverlays:(nonnull NSArray<OverlayItemObject *> *)overlays`

- New method available in `PositionContext`:
  
  `(nullable PositionObject*)getPosition:(PositionType)type;`
  
- New case in RouteType enum available:

  `RouteTypeEconomic`
  
- New profile available in `RoutePreferencesObject`:
  
  `EBikeProfile`
  
  `EBikeProfileDetails`
  
- New methods available in `SocialOverlayContext`:
  
  `(nonnull NSArray < SocialReportsOverlayCategoryObject *> *)getCategoriesWithIsoCode:(nonnull NSString *)isoCode`
  
  `(nullable SocialReportsOverlayCategoryObject *)getCategoryWithIdentifier:(int)categoryId isoCode:(nonnull NSString *)isoCode`
  
- New classes available: `MapDetailsContext.h`, `OverlayCategoryObject.h`, `SocialReportsOverlayCategoryObject` `DataSourceContext`, `DataSourceContextDelegate`,  `RoadSafetyAlertsContext`, `RoadSafetyAlertsContextDelegate` 

### Changed
- The following methods are now deprecated in `NavigationContext`:
  
  `simulateRouteWithRoute:(nonnull RouteObject *)route speedMultiplier:(float)speed completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `navigateRouteWithRoute:(nonnull RouteObject *)route completionHandler:(nonnull void(^)(BOOL success))handler`

### Removed
- Removed deprecated methods from `PositionContext`, `NavigationContext`, `MapViewController` and `RouteInstructionObject`.

## [7.1.21.43.FAFF5D4E] - 2021-10-29
### Added  
- New methods available in `OverlayItemObject`:
  
  `(nonnull NSString *)getPreviewData:(ExtendedDataType)type`
  
  `(nullable NSValue *)searchInPreviewData:(SocialReportParameterType)parameterType`

### Changed
- Fixed app crash for custom map style.

### Removed
- Removed methods from `ImageDatabaseObject`:
  
  `(int)import:(nonnull NSString *)filePath`
  
  `(BOOL)removeImageObject:(nonnull ImageObject *)object`

## [7.1.21.43.B28E7C7F] - 2021-10-25
### Added
- New methods available in `AlarmContext`:

  `(void)enableSafetyCameraOfflineDataGrabber`
  
  `(void)disableSafetyCameraOfflineDataGrabber`

  `(BOOL)isSafetyCameraOfflineDataGrabberEnabled`

  `(BOOL)isSafetyCameraOfflineDataGrabberSupported`
  
  `(void)enableSocialReportsOfflineDataGrabber`

  `(void)disableSocialReportsOfflineDataGrabber`
  
  `(BOOL)isSocialReportsOfflineDataGrabberEnabled`
  
  `(BOOL)isSocialReportsOfflineDataGrabberSupported`
  
  `(void)setOverSpeedThreshold:(double)threshold insideCityArea:(bool)inside`
  
  `(double)getOverSpeedThreshold:(BOOL)insideCityArea`
  
  `(nonnull NSArray <RectangleGeographicAreaObject *> *)getCrossedBoundaries`
  
  `(nonnull NSArray <LandmarkObject *> *)getLandmarkAlarms`
  
  `(nonnull NSArray <OverlayItemObject *> *)getOverlayItemAlarmsPassedOver`

- Make `AlarmContextDelegate` optional.
  
- New methods available in `AlarmContextDelegate`:
  
  `(void)alarmContextOnBoundaryCrossed:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnMonitoringStateChanged:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnTunnelEntered:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnTunnelLeft:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnLandmarkAlarmsUpdated:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnOverlayItemAlarmsUpdated:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnLandmarkAlarmsPassedOver:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnOverlayItemAlarmsPassedOver:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnEnterDayMode:(nonnull AlarmContext *)alarmContext`
  
  `(void)alarmContextOnEnterNightMode:(nonnull AlarmContext *)alarmContext`

- New enums available for `LandmarkCategoryObject`:
  
  `DefaultLandmarkCategory`

- New methods available for `LandmarkObject`:
  
  `(nullable ImageObject*)getImage`
  
  `(void)setImage:(nonnull ImageObject *)object`
  
  `(nullable ImageObject*)getExtraImage`
  
  `(void)setExtraImage:(nonnull ImageObject *)object`
  
- New methods available for `LandmarkStoreContext`:
  
  `(BOOL)updateCategory:(nonnull LandmarkCategoryObject *)category`
  
  `(BOOL)removeCategory:(nonnull LandmarkCategoryObject *)category`
  
  `(BOOL)removeCategoryWithAllContent:(nonnull LandmarkCategoryObject *)category`

- New methods available for `RectangleGeographicAreaObject`:
  
  `(nonnull GeoLocation *)getCenterPoint`
  
  `(BOOL)isDefault`
  
  `(BOOL)isEmpty`
  
  `(void)reset`

### Changed
- Fixed typo in methods available for `MapViewController`:

  `(void)searchAroundWithCompletionHandler:(nonnull void(^)(NSArray<LandmarkObject *> *array))handler`
  
  `(void)searchAroundWithCategory:(nonnull LandmarkCategoryObject *)category completionHandler:(void(^)(NSArray<LandmarkObject *> *array))handler`
  
- Fixed typo in methods available for `SearchContext`:

  `(void)searchAroundWithLocation:(nonnull GeoLocation *)location completionHandler:(nonnull void(^)(NSArray<LandmarkObject *> *array))handler;`

## [7.1.21.41.741983E3] - 2021-10-15
### Added

- New methods available in `ContactInfoObject`:

  `(void)setField:(int)index type:(ContactInfoFieldType)fieldType value:(nonnull NSString *)value name:(nonnull NSString *)name`
  
  `(void)addField:(ContactInfoFieldType)fieldType value:(nonnull NSString *)value name:(nonnull NSString *)name`
  
  `(void)removeField:(int)index`
  
- New methods available in `GEMSdkDelegate`:

  `(BOOL)shouldUpdateWorldwideRoadMapForStatus:(ContentStoreOnlineSupportStatus)status`
  
  `(void)updateWorldwideRoadMapFinished:(BOOL)success`

  `(void)onWorldwideRoadMapSupportEnabled`
  
  `(void)onWorldwideRoadMapSupportDisabled:(ReasonType)reason`
  
- Removed methods from `GEMSdkDelegate`:

  `(BOOL)shouldUpdateWorldMapForStatus:(ContentStoreOnlineSupportStatus)status`

  `(void)updateWorldMapDisabled:(ReasonType)reason`
  
- New methods available in `LandmarkObject`:
  
  `(void)setLandmarkDescription:(nonnull NSString *)description`
  
  `(void)setAuthor:(nonnull NSString *)value`
  
  `(void)setProviderId:(int)value`
  
  `(void)setTimeStamp:(nullable TimeObject*)object`
  
  `(void)setLandmarkGeoLocation:(nonnull GeoLocation *)location`
  
  `(void)setContactInfo:(nullable ContactInfoObject *)object`
  
  `(nonnull NSString*)getLandmarkNameFormatted`
  
  `(nonnull NSString*)getLandmarkDescriptionFormatted`
  
  - Removed methods from `LandmarkObject`:
  
  `(void)setCurrentPositionMark:(BOOL)state`
   
  `(BOOL)isCurrentPositionMarked`
  
- New methods available in `MapViewController`:
  
  `(void)setCursorPosition:(CGPoint)point`
  
  `(nonnull NSArray <LandmarkObject *> *)getCursorSelectionLandmarks`
  
  `(nonnull NSArray <LandmarkObject *> *)getCursorSelectionStreets`
  
  `(nonnull NSArray <LandmarkObject *> *)getCursorSelectionOverlayItems`
  
  `(nonnull NSArray <LandmarkObject *> *)getCursorSelectionTrafficEvents`
  
  `(nonnull NSArray <LandmarkObject *> *)getCursorSelectionRoutes`
  
  `(nullable RouteInstructionObject *)getCursorSelectionRouteInstruction:(nonnull RouteObject *)routeObject`
  
  `(nonnull NSArray <LandmarkObject *> *)getNearestLocations:(nonnull GeoLocation *)location`
  
  `(void)startFollowingPositionWithAnimationDuration:(NSTimeInterval)duration zoomLevel:(int)level viewAngle:(double)angle completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(void)restoreFollowingPositionWithAnimationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(void)setViewAngle:(double)value`
  
  `(double)getViewAngle`
  
  `(void)setTiltAngle:(double)angle followMode:(CameraFollowMode)mode`
  
  `(double)getTiltAngle`
  
  `(double)getTiltAngleWithFollowMode:(CameraFollowMode)followMode`
  
- Make `MapViewControllerDelegate` optional.
  
- New methods available in `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onFollowingPositionModifyByTouchHandler:(BOOL)isModify`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onLongTouchPoint:(CGPoint)point`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectStreets:(nonnull NSArray<LandmarkObject *> *)streets onTouchPoint:(CGPoint)point`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectStreets:(nonnull NSArray<LandmarkObject *> *)streets onLongTouchPoint:(CGPoint)point`
  
- Removed methods from `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController didSelectStreets:(nonnull NSArray<LandmarkObject *> *)streets`
  
- New methods available in `PositionObject`:
  
  `(NSInteger)getSatelliteTime`
  
  `(PositionProvider)getProvider`
  
  `(double)getLatitude`
  
  `(double)getLongitude`
  
  `(nonnull GeoLocation*)getCoordinates`
  
  `(double)getAltitude`
  
  `(double)getSpeedAccuracy`
  
  `(double)getCourse`
  
  `(double)getCourseAccuracy`
  
  `(double)getHorizontalAccuracy`
  
  `(double)getVerticalAccuracy`
  
  `(PositionFixQuality)getFixQuality`
  
  `(BOOL)isValid`
  
  `(BOOL)hasCoordinates`
  
  `(BOOL)hasAltitude`
  
  `(BOOL)hasSpeedAccuracy`
  
  `(BOOL)hasCourse`
  
  `(BOOL)hasCourseAccuracy`
  
  `(BOOL)hasHorizontalAccuracy`
  
  `(BOOL)hasVerticalAccuracy`
  
- Removed methods from `PositionObject`:
  
  `(nullable GeoLocation*)getPositionGeoLocation;`
  
- The following method is now deprecated in `RouteInstructionObject`:

  `(nullable UIImage *)getTurnImage:(CGSize)size colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`
  
- New methods available in `TurnDetailsObject`:

  `(nullable UIImage *)getTurnImage:(CGSize)size colorActiveInner:(nonnull UIColor*)colorActiveIn colorActiveOuter:(nonnull UIColor*)colorActiveOut colorInactiveInner:(nonnull UIColor*)colorInactiveIn colorInactiveOuter:(nonnull UIColor*)colorInactiveOut`
  
  `(int)getTurnImageId`
  
## [7.1.21.38.F7EA52F0] - 2021-09-20
### Added

- New method available in `GEMSdk`:

  `(nonnull NSString *)getVersion`

- New classes available: `PathObject`, `RouteBookmarksObject`, `RoutePreferencesObject.h`

- New methods available in `MapViewController`:

  `(nonnull NSArray < RouteObject *> *)getPresentedRoutes`
  
  `(CGFloat)getScaleFactor`
  
  `(NSInteger)getPpiFactor`
  
  `(void)centerOnRouteInstruction:(nonnull RouteInstructionObject *)routeInstruction zoomLevel:(int)level animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(void)centerOnRouteTrafficEvent:(nonnull RouteTrafficEventObject *)trafficEvent zoomLevel:(int)level animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
  `(void)centerOnArea:(nonnull RectangleGeographicAreaObject *)area zoomLevel:(int)level animationDuration:(NSTimeInterval)duration completionHandler:(nonnull void(^)(BOOL success))handler`
  
- New methods available in `MapViewControllerDelegate`:
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onPinch:(CGPoint)startPoint1 startPoint2:(CGPoint)startPoint2 toPoint1:(CGPoint)endPoint1 toPoint2:(CGPoint)endPoint2`
  
- New method available in `NavigationInstructionObject`:

  `(nonnull NSString*)getCurrentStreetSpeedLimitFormatted`

- New methods available in `PositionObject`:

  `(BOOL)hasSpeed`

  `(double)getSpeed`

  `(nonnull NSString *)getFormattedSpeed`

  `(nonnull NSString *)getFormattedSpeedUnit`

- New methods available in `RouteObject`:

  `(nullable GeoLocation *)getCoordinateOnRoute:(int)distance`

  `(int)getDistanceOnRoute:(nonnull GeoLocation*)location activePart:(BOOL)activePart`

  `(nullable PathObject*)getPath:(int)start end:(int)end`

- New methods available in `TimeObject`:

  `(BOOL)isValid`

  `(void)milliSecondSleep:(unsigned int)msec`

  `(NSUInteger)getEpoch`

  `(nonnull TimeObject *)getLocalTime`

  `(nonnull TimeObject *)getUniversalTime`

  `(void)setUniversalTime`

  `(void)setLocalTime`

  `(NSUInteger)asInt`

  `(void)fromInt:(NSInteger)timestamp`

  `(int)getYear`

  `(void)setYear:(int)value`

  `(int)getMonth`

  `(void)setMonth:(int)value`

  `(int)getDay`

  `(void)setDay:(int)value`

  `(int)getDayOfWeek`

  `(int)getHour`

  `(void)setHour:(int)value`

  `(int)getMinute`

  `(void)setMinute:(int)value`

  `(int)getSecond`

  `(void)setSecond:(int)value`

  `(int)getMillisecond`

  `(void)setMillisecond:(int)value`

  `(nonnull NSString *)toStr:(BOOL)utcTime`

  `(NSInteger)getTimeZoneMilliseconds`

- The following methods are now deprecated in `NavigationContext`:

  `setTransportMode:(RouteTransportMode)mode`

  `(RouteTransportMode)getTransportMode`

  `setBuildTerrainProfile:(BOOL)state`

  `setRouteType:(RouteType)type`

  `setAvoidMotorways:(BOOL)state`

  `setAvoidTollRoads:(BOOL)state`

  `setAvoidFerries:(BOOL)state`

  `setAvoidTurnAroundInstruction:(BOOL)state`

  `setAvoidUnpavedRoads:(BOOL)state`

  `setAvoidCarpoolLanes:(BOOL)state`

  `setUseWheelchair:(BOOL)state`

  `setUseBikes:(BOOL)state`

  `setMaximumWalkDistance:(unsigned int)distance`

  `setAvoidTraffic:(BOOL)state`

  `setResultDetails:(RouteResultDetails)details`

## [7.1.21.35.6B2C9079] - 2021-08-30
### Added

- New method available in `MapViewController`:

  `(void)setHighlightPinSize:(NSInteger)size`

- New methods available in `MapViewControllerDelegate`:

  `(void)mapViewController:(nonnull MapViewController *)mapViewController onFollowingPositionStateChanged:(BOOL)isFollowingPosition`
  
  `(void)mapViewController:(nonnull MapViewController *)mapViewController onMapStyleChanged:(NSInteger)identifier`

- New method available in `GeoLocation`:

  `(double)getDistance:(nonnull GeoLocation*)point`

- New methods available in `NavigationContext`:

  `(RouteTransportMode)getTransportMode`
  
  `(void)setResultDetails:(RouteResultDetails)details`  

- New enums available for `NavigationContext`:

  `RouteResultDetailsFull`

  `RouteResultDetailsTimeDistance`

  `RouteResultDetailsPath`

- New methods available in `SoundContext`:

  `(BOOL)isPlaying`

  `(void)cancel`

  - New method available in `PositionContext`:

  `(PositionDataType)getPositionDataType`

- New enums available for `PositionContext`:

  `PositionDataTypeLive`

  `BuildingsVisibilityHide`

  `PositionDataTypePlayback`

  `PositionDataTypeUnavailable`

- New method available in `ContentStoreObject`:

  `(ContentStoreOnlineType)getType`

- New enums available for `ContentStoreObject`:

  `ContentStoreOnlineTypeViewStyleHighRes`

  `ContentStoreOnlineTypeViewStyleLowRes`

  `ContentStoreOnlineTypeRoadMap`

  `ContentStoreOnlineTypeHumanVoice`

  `ContentStoreOnlineTypeComputerVoice`

- New method available in `HumanVoiceContext`:

  `(nonnull NSString*)getCountryName:(nonnull NSString*)code`
  
  `(nonnull NSString*)getNativeLanguage:(nonnull ContentStoreObject *)object`
  
  `(nullable UIImage*)getGenderImage:(HumanVoiceGender)gender size:(CGSize)size`

## [7.1.21.32.1CFA7043] - 2021-08-13
### Added
- New delegate method available in `MapViewControllerDelegate`:

  `(void)mapViewController:(nonnull MapViewController *)mapViewController onRotatePoint:(CGPoint) startPoint2:(CGPoint) toPoint1:(CGPoint) toPoint2:(CGPoint) center:(CGPoint) delta:(double)`

- New methods available in `MapViewController`:

  `setZoomLevel:(int)level animationDuration:(NSTimeInterval)duration`

  `(void)setCompassFollowUserInterfaceStyle:(BOOL)value`

  `(NSInteger)getStyleIdentifier`

  `(void)setMaxMatches:(int)value`

  `(void)setExactMatch:(BOOL)value`

  `(void)setSearchAddresses:(BOOL)value`

  `(void)setSearchMapPOIs:(BOOL)value`

  `(void)setSearchOnlyOnboard:(BOOL)value`

  `(void)setThresholdDistance:(int)threshold`

  `(BOOL)setCategory:(nonnull LandmarkCategoryObject*)category`

  `(void)setAllowFuzzyResults:(BOOL)value`

  `(void)cancelSearch`

  `(void)stopFollowingPosition`  
  
- New method available in `ContentStoreObject`:

  `(nullable UIImage *)getAsyncImagePreview:(CGFloat)width completionHandler:(nonnull void(^)(UIImage* _Nullable image) )handler`

- New method available in `PositionContext`:

  `(BOOL)startProcessingLocationSevicesDataWithAllowBackgroundLocationUpdates:(BOOL)allowBackgroundLocationUpdates;`

### Changed
- Fixed bug related to no network connection.

- Faster search results with `MapViewController` search Api and more controller over search preferences.

- The following methods are now deprecated in `MapViewController`:

  `addPolylinesWithCoordinates`

  `removePolylines`

- The following methods are now deprecated in `PositionContext`:

  `startProcessingLocationSevicesData`

## [7.1.21.30.47C453AA] - 2021-07-30
### Added
- New method and new enum available in `GEMSdk`:

  `(void)verifySdk:(nonnull NSString*)authorizationKey completionHandler:(void(^)(BOOL success))handler`

  `AuthorizationKeyStatusValid`

  `AuthorizationKeyStatusExpired`

  `AuthorizationKeyStatusInvalidInput`

  `AuthorizationKeyStatusAccessDenied`

  `AuthorizationKeyStatusConnectionRequired`

  `AuthorizationKeyStatusError`

- New method available in `GEMSdkDelegate`:

  `(void)authorizationKeyRejected`

- New methods available in `AlarmContext`:

  `(void)enableSafetyCamera`
  
  `(void)disableSafetyCamera`
  
  `(BOOL)isSafetyCameraEnabled`
  
  `(void)enableSocialReports`
  
  `(void)disableSocialReports`
  
  `(BOOL)isSocialReportsEnabled`

- New methods available in `PositionContext`:

  `(BOOL)startProcessingLocationSevicesData`
  
  `(BOOL)stopProcessingLocationSevicesData`
  
  `(BOOL)isProcessingLocationSevicesData`

- New methods available in `MarkerCollectionObject`:

  `(void)setInnerColor:(nonnull UIColor *)color`
  
  `(void)setOuterColor:(nonnull UIColor *)color`
  
  `(void)setInnerSize:(double)size`
  
  `(void)setOuterSize:(double)size`
  
  `(void)setFillColor:(nonnull UIColor *)color`
  
  `(nonnull UIColor *)getInnerColor`
  
  `(nonnull UIColor *)getOuterColor`
  
  `(double)getInnerSize`
  
  `(double)getOuterSize`
  
  `(nonnull UIColor *)getFillColor`

### Changed
- Fixed polyline outer size.

- Fixed issue related to map style on fresh app install.

## [7.1.21.30.F8FD4DB3] - 2021-07-27
### Added
- New method available in `GeoLocation`:

  `(BOOL)isValid`

- New method available in `LandmarkObject`:

  `(int)getLandmarkStoreIdentifier`

- New methods available in `MapViewController`:

  `(void)showLandmarksFromAllCategories:(nonnull LandmarkStoreContext*)landmarkStore`

  `(void)hideLandmarksFromAllCategories:(nonnull LandmarkStoreContext*)landmarkStore`

  `(void)showLandmarksFromCategory:(nonnull LandmarkCategoryObject*)landmarkCategory context:(nonnull LandmarkStoreContext*)landmarkStore`

  `(void)hideLandmarksFromCategory:(nonnull LandmarkCategoryObject*)landmarkCategory context:(nonnull LandmarkStoreContext*)landmarkStore`

- New method available in `LandmarkStoreContext`:

  `(void)updateCategory:(nonnull LandmarkCategoryObject *)category`

### Changed
- Methods signature changed in `LandmarkStoreContext`:

  `(nonnull LandmarkCategoryObject *)getCategoryById:(int)categoryId`

  `(BOOL)addLandmark:(nonnull LandmarkObject*)landmark`

  `(BOOL)removeLandmark:(nonnull LandmarkObject*)landmark`

  `(void)removeAllLandmarks`

  `(BOOL)addLandmark:(nonnull LandmarkObject*)landmark toCategoryId:(int)categoryId`

  `(BOOL)removeLandmark:(nonnull LandmarkObject*)landmark fromCategoryId:(int)categoryId`

  `(nullable LandmarkObject *)getLandmark:(int)landmarkId`

  `(int)getLandmarkCount`

  `nonnull NSArray <LandmarkObject *> *)getLandmarks`

  `(int)getLandmarkCount:(int)categoryId`

  `(nonnull NSArray <LandmarkObject *> *)getLandmarks:(int)categoryId`

## [7.1.21.29.F6977F8B] - 2021-07-22
### Added
- New methods available in `RectangleGeographicAreaObject`:

  `(GeographicAreaType)getType`

  `(void)setTopLeft:(nonnull GeoLocation*)location`

  `(void)setBottomRight:(nonnull GeoLocation*)location`

  `(BOOL)intersects:(nonnull RectangleGeographicAreaObject *)rectangle`

  `(BOOL)contains:(nonnull RectangleGeographicAreaObject *)rectangle`

- New methods available in `LandmarkCategoryObject`:

  `(instancetype)initWithName:(nonnull NSString *)`

  `(void)setName:(nonnull NSString *)`

  `(void)setImage:(nonnull UIImage *)`

- New methods available in `LandmarkObject`:

  `(void)setLandmarkName:(nonnull NSString *)`

  `(void)setLandmarkImage:(nonnull UIImage *)`

- New methods available in `LandmarkStoreContext`:

  `(void)addCategory:(nonnull LandmarkCategoryObject *)category`

  `(void)removeCategory:(nonnull LandmarkCategoryObject *)category`

  `(nullable LandmarkCategoryObject *)getCategoryByName:(nonnull NSString *)categoryString`

  `(int)getId`

  `(LandmarkStoreType)getType;`

  `(nonnull NSArray <LandmarkCategoryObject *> *)getCategories`

  `(int)getLandmarkCount:(nonnull NSString*)category`

  `(nonnull NSArray <LandmarkObject *> *)getLandmarks:(nonnull NSString*)category`

  `(nullable LandmarkObject *)getLandmarkWithIdentifier:(int)identifier`

  `(nonnull NSArray <LandmarkObject *> *)getLandmarksWithRectangleGeographicArea:(nonnull RectangleGeographicAreaObject*)area`

### Changed
- Fix app crash when switching between multiple `MapViewController` with polylines on the map view.

- Removed deprecated methods from `MapViewController`.

## [7.1.21.27.F104E3C4] - 2021-07-06
### Added
- New classes available `ContactInfoObject`, `LandmarkStoreContext`

- New methods available in `LandmarkObject`:

  `(nonnull NSArray <NSString *> *)getExtraInfo`

  `(nonnull NSArray <LandmarkCategoryObject *> *)getCategories`

  `(nullable RectangleGeographicAreaObject *)getGeographicArea`

  `(nullable ContactInfoObject *)getContactInfo`

- New enums available for `BuildingsVisibility`:

  `BuildingsVisibilityDefault`

  `BuildingsVisibilityHide`

  `BuildingsVisibility2D`

  `BuildingsVisibility3D`

- New method available in `SearchContext`:

  `setAllowFuzzyResults:(BOOL)value`

## [7.1.21.26.FD631602] - 2021-07-02
### Added
- New method available in `MapsContext` and `MapStyleContext`:

  `(BOOL)isUpdateStarted`

## [7.1.21.25.FB8DC20C] - 2021-07-01
### Added
- New protocol `ContentUpdateDelegate`.

- New methods available in `GEMSdkDelegate`:

  `updateWorldMapDisabled:(ReasonType)reason`

  `updateWorldMapFinished:(BOOL)success`

  `(void)onlineConnectionStatusChanged:(OnlineConnectionStatus)status`

- New methods available in `MapsContext` and `MapStyleContext`:

  `(nonnull NSString *)getWorldMapVersion`

  `checkForUpdateWithCompletionHandler:(nonnull void(^)(ContentStoreOnlineSupportStatus status))handler`

  `updateWithAllowCellularNetwork:(BOOL)allowCellularNetwork completionHandler:(nonnull void(^)(BOOL success))handler`

  `(void)cancelUpdate`

  `(NSInteger)getUpdateProgress`

  `(nonnull NSArray <ContentStoreObject *> *)getUpdateItems`

  `(nonnull NSString *)getUpdateSizeFormatted`

- New methods available in `MapViewController`:

  `setBuildingsVisibility:(BuildingsVisibility)visibility`

  `(BOOL)isCameraMoving`

### Changed
- Fix app crash when using more than one `MapViewController`.

- Implemented support for map update on request.
 
## [7.1.21.25.DDC98F41] - 2021-06-23
### Added
- Implemented support for `GEMSdk` delegate.

- Implemented support to update the world map with SDK client approval.

- New methods available in `GEMSdk`:

  `(void)setAllowConnection:(BOOL)state`
  
  `(BOOL)getAllowConnection`

- New methods available in `MapViewController`:

  `(int)getZoomLevelWithFollowMode:(CameraFollowMode)mode`
  
  `(void)setZoomLevel:(int)level point:(CGPoint)point followMode:(CameraFollowMode)mode animationDuration:(NSTimeInterval)duration`
  
  `(void)setEdgeAreaInsets:(UIEdgeInsets)insets`

- New methods available in `RouteObject`:

  `(nullable RectangleGeographicAreaObject *)getGeographicArea`
  
  `(nullable TimeDistanceObject *)getTimeDistanceWithActivePart:(BOOL)activePart`

- New methods available in `MapViewController`:

  `(void)set2DPerspectiveWithAnimationDuration`

  `(void)set3DPerspectiveWithAnimationDuration`

## [7.1.21.24.51C956AF] - 2021-06-17
### Added
- Implemented support for custom map style data buffer.

- Implemented support for route profile ( new `RouteTerrainProfileObject` class )

- Implemented support for calculating a route from a gpx file.

- New method available in `MapViewController`:

  `(void)applyStyleWithStyleBuffer:(nonnull NSData *)styleBuffer smoothTransition:(BOOL)smooth;`

- New method available in `RouteObject`:

  `(nullable RouteTerrainProfileObject *)getTerrainProfile;`

- New method available in `NavigationContext`:

  `(void)calculateRouteWithStartWaypoints:(nonnull NSArray<LandmarkObject *> *)startArray buffer:(nonnull NSData*)data endWaypoints:(nonnull NSArray<LandmarkObject *> *)endArray completionHandler:(nonnull void(^)(NSArray<RouteObject *> *array))handler;`

## [7.1.21.23.9E891AB0] - 2021-06-11
### Added
- Implemented support for map view customization.

- New methods available in `MapViewController`:

  `(nullable GeoLocation *)transformScreenToWgs:(CGPoint)point`

  `(void)setFollowPositionCameraFocus:(CGPoint)point`

  `(CGPoint)getFollowPositionCameraFocus`

  `(void)setMinimumAllowedZoomLevel:(int)level`

  `(void)setMaximumAllowedZoomLevel:(int)level`

  `(void)setHighlightPinImage:(nonnull UIImage *)image`

## [7.1.21.23.7A56AE1E] - 2021-06-10
### Added
- Implemented support for public transit route description.

- Implemented support for `PTRouteSegmentObject` class.

- Implemented support for `RectangleGeographicAreaObject` class.

## [7.1.21.22.0F756BC9] - 2021-06-04
### Added
- Implemented support for `GenericCategoriesContext` class.

- Implemented support for `LandmarkCategoryObject` class.

- New methods available:

  SearchContext: `(BOOL)setCategory:(nonnull LandmarkCategoryObject*)category`

  SearchInterface: `(BOOL)setCategory:(gem::LandmarkCategory)category`

### Changed
`ApplicationContext` renamed to `GEMSdk`

## [7.1.21.22.82497343] - 2021-05-31
### Added
- Implemented support for `HumanVoiceContext` class.

- Implemented support for `SoundObject` class.

- New methods available:

  SoundContext: `setUseTtsWithCompletionHandler`

  SoundContext: `setUseHumanVoiceWithIdentifier`

  SoundContext: `playSound:(nonnull SoundObject *)object`

  SoundContext: `playText:(nonnull NSString *)text`

### Changed
ContentStoreObject: `getImagePreview`

MapViewController: `applyStyleWithStyleIdentifier`

## [7.1.21.22.811AFB6] - 2021-05-24
### Added
- Implemented support for road codes information.

- Implemented support for safety camera notification.

- New classes available:

  `AlarmContext`

  `AlarmContextDelegate`

  `OverlayItemObject`

  `RoadInfoObject`

## [7.1.21.19.7F5A4140] - 2021-05-11
### Added
- Implemented support for route instructions.

- New classes available:

  `RouteSegmentObject`

  `RouteInstructionObject`

  `SignpostDetailsObject`

  `TimeDistanceObject`

  `TurnDetailsObject`

## [7.1.21.19.227B51FF] - 2021-05-10
### Added
- Implemented support for download maps.

- New classes:

  `MapsContext`

  `ContentStoreObjectStatus`

### Changed
- ContentStoreObject: `(nonnull NSArray<NSString *> *)getCountryCodes`

## [7.1.21.17.3F055C56] - 2021-04-26
### Added
- Implemented support for map compass.

## [7.1.21.16.2861B264] - 2021-04-19
### Added
- Implemented support for Address Search.

- Implemented support for get/set map view zoom level.

- Implemented support for map view pan direction ( CarPlay support )

### Changed
- New map view controller init method. Add support for scale factor parameter.

- `(instancetype)initWithPpi:(NSInteger)ppi scale:(CGFloat)scale`

## [Unreleased] - 2021-03-09
[7.1.21.10.75657511]: Initial release
