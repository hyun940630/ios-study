//
//  AppDelegate.swift
//  FoodTracker
//
//  Created by xtring on 2021/01/19.
//


/*
App Delegate Source File
 - AppDelegate 클래스를 정의합니다. App Delegate이 앱 내용을 그려 앱 내에서 상태 변화에 반응할 수 있는 장소를 제공합니다.
 - 앱에 대한 진입 점과 앱에 입력 이벤트를 전달하는 실행 루프를 만듭니다. 이 작업은 파일 상단에 나타나는 UIApplicationMain 함수를 호출하고 AppDelegate 클래스 이름을 대리자 클래스의 이름으로 전달하는 것과 같습니다. 이에 대한 응답으로 시스템은 애플리케이션 객체를 생성합니다. 응용 프로그램 개체는 응용 프로그램의 수명주기를 관리합니다. 시스템은 또한 AppDelegate 클래스의 인스턴스를 만들고 이를 응용 프로그램 개체에 할당합니다. 마지막으로 시스템이 앱을 시작합니다.
 
 App Delegate의
 
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
     func applicationWillResignActive(_ application: UIApplication)
     func applicationDidEnterBackground(_ application: UIApplication)
     func applicationWillEnterForeground(_ application: UIApplication)
     func applicationDidBecomeActive(_ application: UIApplication)
     func applicationWillTerminate(_ application: UIApplication)
 
 메서드들을 통해서 앱 상태 전환(예, 앱 시작, 백 그라운드로 전환, 앱 종료) 중에 애플리케이션 개체는 해당 대리자 메서드를 호출하여 앱에 응답할 수 있는 기회를 제공합니다. 이러한 메서드가 정확한 시간에 호출 되도록 하기위해 특별한 작업을 수행할 필요가 없습니다. 응용 프로그램 개체가 해당 작업을 대신 처리합니다.
 
 각 대리자 메서드에는 기본 동작이 있습니다. 템플릿 구현을 비워 두거나 AppDelegate클래스 에서 삭제하면 해당 메서드가 호출 될 때마다 기본 동작이 적용됩니다. 또는 스텁 메서드에 고유 한 코드를 추가하여 메서드가 호출 될 때 실행되는 사용자 지정 동작을 정의 할 수 있습니다.
 */

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

