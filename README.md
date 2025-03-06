# Project layout
This is a Tuist based project that presents a behaviour I could not fully explain. I'm pretty sure it dependes on how Binary targets are defined and compiled, and I'm wondering if there is a simple solution (maybe with a build flag)

- Two Swift packages under modules
- Apps with the same code base but different Project.swift defintions

  ## Swift Packages
  Under the `Modules` folder are two packages
  - LocalSwiftPackageFlag - a simple pacakge exposing a protocol (MyConfiguration) an enum (SecurityClient) and a pure function (castAndGetAppID). The `castAndGetAppID` is the testing function. It casts the `SecurityClient` type into the protocol `MyConfiguration` type (`(SecurityClient.self as? MyConfiguration.Type)`)
  - LocalSwiftPackageBootstrap - a lean module that conforms the `SecurityClient` to the `MyConfiguration` protocol
 

Note the protocol defines a static propery - and this is where I think the difference of the behaviour I''m going to describe

  ## Applicaitons
  Under the Apps folder are 3 applications. The applications run the same code.
  The difference is in the way the applications are importing modules described above

  - **AppSPM** - under the folder `JustWithSPM` there is a simple old-school project file that defines and uses the two package using SPM directly
  - **AppDependencies** - under the folder `WithDepdendenciesDotSwift` there is a simple project file that defines and uses the two package using Dependencies.swift - as external dependenceis
  - **AppDependencies2** - under the folder `WithDepdendenciesDotSwiftConformanceAtTheAppLevel` there is a simple project file that defines and uses the two package using Dependencies.swift - as external dependenceis

All the applications are running the same code - calling `print("DB: \(String(describing: Flag.castAndGetAppID()))")` at the end of the `didFinishLaunchingWithOptions` of the AppDelegate.

The issue is, for the **AppDependencies** the casting fails, for the **AppSPM** the casting succeeds.
I added the **AppDependencies2** to show that if I move the code from the `LocalSwiftPackageBootstrap` package to the app level, the casting succeeds.

To run and see the diffrrence:
1) Clone the repo
2) Install [Tuist](https://docs.tuist.io/documentation/tuist/installation)
3) Run `tuist install` from the root of the repo
4) Run `tuist generate` from the root of the repo
5) Run the applicaitons and see the console log out put with the `DB:` prefix
