# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'
#plugin 'cocoapods-binary'
use_frameworks!


def pods
  # pod 'RxSwift'
  pod 'GoogleMaps'
  pod 'NMapsMap'
  pod 'GoogleMLKit/Translate', '3.2.0'
  pod 'Google-Maps-iOS-Utils'
  pod "GooglePlaces", '7.1.0'
#  pod 'RxDataSources'
#  pod 'Alamofire'
#  pod 'Moya'
#  pod 'SnapKit'
#  pod 'Then'
#  pod 'Kingfisher'
#  pod 'RxGesture'
#  pod 'SwiftyJSON'
#  pod 'Toast'
#  pod 'RealmSwift'
end

target 'CloneProject' do
  # Comment the next line if you don't want to use dynamic frameworks
   
   inherit! :none
  # Pods for CloneProject
  target 'CloneProjectTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Domain' do
  target 'DomainTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Presentation' do
  # Comment the next line if you don't want to use dynamic frameworks
  # Pods for Presentation
  target 'PresentationTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Repository' do
  # Comment the next line if you don't want to use dynamic frameworks
  # Pods for Repository
  target 'RepositoryTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Service' do
  # Comment the next line if you don't want to use dynamic frameworks
  # Pods for Service
  target 'ServiceTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Shared' do
  # Comment the next line if you don't want to use dynamic frameworks
  pods
  # Pods for Shared
  target 'SharedTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Util' do
  # Comment the next line if you don't want to use dynamic frameworks
  # Pods for Util
  target 'UtilTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

#
#post_install do |installer|
#    sharedLibrary = installer.aggregate_targets.find { |aggregate_target| aggregate_target.name == 'Pods-[MY_FRAMEWORK_TARGET]' }
#    installer.aggregate_targets.each do |aggregate_target|
#        if aggregate_target.name == 'Pods-[MY_APP_TARGET]'
#            aggregate_target.xcconfigs.each do |config_name, config_file|
#                sharedLibraryPodTargets = sharedLibrary.pod_targets
#                aggregate_target.pod_targets.select { |pod_target| sharedLibraryPodTargets.include?(pod_target) }.each do |pod_target|
#                    pod_target.specs.each do |spec|
#                        frameworkPaths = unless spec.attributes_hash['ios'].nil? then spec.attributes_hash['ios']['vendored_frameworks'] else spec.attributes_hash['vendored_frameworks'] end || Set.new
#                        frameworkNames = Array(frameworkPaths).map(&:to_s).map do |filename|
#                            extension = File.extname filename
#                            File.basename filename, extension
#                        end
#                    end
#                    frameworkNames.each do |name|
#                        if name != '[DUPLICATED_FRAMEWORK_1]' && name != '[DUPLICATED_FRAMEWORK_2]'
#                            raise("Script is trying to remove unwanted flags: #{name}. Check it out!")
#                        end
#                        puts "Removing #{name} from OTHER_LDFLAGS"
#                        config_file.frameworks.delete(name)
#                    end
#                end
#            end
#            xcconfig_path = aggregate_target.xcconfig_path(config_name)
#            config_file.save_as(xcconfig_path)
#        end
#    end
#end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts target.name
  end
end
