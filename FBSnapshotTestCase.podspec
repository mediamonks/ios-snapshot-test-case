Pod::Spec.new do |s|
  s.name         = "FBSnapshotTestCase"
  s.version      = "2.2.3"
  s.summary      = "Snapshot view unit tests for iOS"
  s.description  = <<-DESC
                    A "snapshot test case" takes a configured UIView or CALayer
                    and uses the renderInContext: method to get an image snapshot
                    of its contents. It compares this snapshot to a "reference image"
                    stored in your source code repository and fails the test if the
                    two images don't match.
                   DESC
  s.homepage     = "https://github.com/facebook/ios-snapshot-test-case"
  s.license      = 'MIT'
  s.author       = 'Facebook'
  s.source       = { :git => "https://github.com/mediamonks/ios-snapshot-test-case.git",
                     :tag => s.version.to_s }
  s.ios.deployment_target  = '7.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.frameworks   = 'XCTest','UIKit','Foundation','QuartzCore'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.user_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PLATFORM_DIR)/Developer/Library/Frameworks' }

  s.subspec 'Core' do |cs|
    cs.source_files = 'FBSnapshotTestCase/**/*.{h,m}'
    cs.exclude_files = 'FBSnapshotTestCase/include/*.h' # This is an SPM-specific one.
    cs.public_header_files = 'FBSnapshotTestCase/FBSnapshotTestCase.h','FBSnapshotTestCase/FBSnapshotTestCasePlatform.h','FBSnapshotTestCase/FBSnapshotTestController.h'
    cs.private_header_files = 'FBSnapshotTestCase/Categories/UIImage+Compare.h','FBSnapshotTestCase/Categories/UIImage+Diff.h','FBSnapshotTestCase/Categories/UIImage+Snapshot.h'
  end
end
