## Purposeful iOS Animations

Examples of animations we found to be meaningful and useful on iOS. We created all with SwiftUI. Grab the Xcode project or use this repo as your source of inspiration for SwiftUI animations for iOS. Have you seen an app animation you love to rebuild and add to this repo?, contact [@amos_gyamfi](https://twitter.com/amos_gyamfi) and [@stefanjblos](https://twitter.com/stefanjblos) on Twitter.

These animations were used for the conference talk, "**Animations Are Cool, Right?**" by Amos & Stefan at [Swift Conf 2022](https://swiftconf.com/#/)
----

### Learn to create meaningful and purposeful iOS/SwiftUI animations

## THE MEANING AND PURPOSE OF iOS ANIMATIONS
### [Delight and Whimsy](https://github.com/GetStream/purposeful-ios-animations/tree/main/PurposefulSwiftUIAnimations/MeaningAndPurpose/DelightAndWhimsy)
**ANIMATION AND MEANING:** Delight and Whimsy

Yes, you can animate things just for fun and whimsy. The Duolingo getstarted animation makes it fun and delightful to get started to use the app. The playful animation here can help Duolingo win users over other language learning apps. Making the resting state bouncy makes the animation more fun.
| SwiftUI Animation |  Preview | 
|---|---|
|  [Springy Duo](https://github.com/GetStream/purposeful-ios-animations/blob/main/PurposefulSwiftUIAnimations/MeaningAndPurpose/DelightAndWhimsy/DuoLingoAnimations/SpringyDuoGetStarted.swift) | ![Duolingo Get Started ](https://github.com/GetStream/purposeful-ios-animations/blob/main/MISC/springyDuo.gif)  |  
|  [Duolingo Get Started](https://github.com/GetStream/purposeful-ios-animations/blob/main/PurposefulSwiftUIAnimations/MeaningAndPurpose/DelightAndWhimsy/DuoLingoAnimations/DuoGetStarted.swift) | ![Duolingo Get Started ](https://github.com/GetStream/purposeful-ios-animations/blob/main/MISC/duoGetstarted.gif)  |  


### State Change
### Attention
### Guide Users
### Natural and Realistic
### Feedback and Hinting
### Augment Feeling
### Express Gratitude
### Intrinsic Motivation
### Invitation to Act
### Represent an Activity
### Decoration


## iOS ANIMATION PRINCIPLES
### Anticipation
### Staging
### Follow Through
### Overlapping Action
### Easing and Meaning


## iOS ANIMATIONS BEST PRACTICES
- **The animation should be nimble and precise:**
  - This helps to convey information more effectively
  - Do not keep users waiting longer than they should.
  - Loading indicators are very useful but do not make the animation run forever, For example, Deliveroo

- **Follow basic accessibility guidelines:**
**Why?**
  - The screen flashing rapidly can cause headache and seizure
  - People with visual disorders (vestibular):
    - Excessive motion like 3D effects can cause discomfort, dizziness, and headache
    - **Examples:** Parallax, sliding, and flashing animations
  - People may think the app is frozen or sluggish
  
- **Reduce Motion:** Turning off animation and motion effects
  - People who are sensitive to motion and screen effects
  - How it works:
    - The default dissolve effect is used instead of zoom or slide.
    - When on, it disables parallax effects, wallpapers animation, and others
  - **Excellent Examples:**
    - **iOS Weather app:** Weather animations are disabled when reduce motion is on.
    - **iOS Messages app:** Provides the ability to set full-screen message effects on/off
  - **In-app Use Motion: On/Off**
      - Implement in the settings of your app the ability to turn off animations, effects, and custom transitions
      - **Worth mentioning:** PCalc
        - Users have the option to turn off the scaling animation of buttons any time they are pressed.
      - **Make onscreen animations/motion optional**
        - Do not make it the only way to communicate information.
        - Why?:
          - People who experience motion sickness when traveling in a vehicle
          - **Nausea:** When the sense of vision and hearing sends conflicting information to the brain due to motion.
          - **Vestibular triggers:** Scaling, zooming, and excessive blurring animations
            - Can give the illusion that the user is moving in physical space
            - **Examples:**
              - Slowly scaling background.
              - Spinning and vortex effects (some Core Image filters): 
              - People with vestibular disorders can lose their balance
              
  - **Use system components:**
    - In iOS, most system components automatically include motion which helps to ensure a familiar and consistent experience within your app
    - **Creating custom motion**. When you need to create a custom motion, always ensure that:
      - It does not make users overwhelmed
      - It keeps users oriented
      - It gives clear feedback in response to users’ actions


## BAD iOS ANIMATION EXAMPLES
### Animation that makes users wonder: 
Forever rotating spinner, Deliveroo
### Grabbing/hijacking users’ attention:
### Excessive flashing animations
### Using wrong easing:
EaseIn: Opacity and scale animations
### Disoriented animation: 
A bottom sheet sliding up to reveal and sliding to the side to dismiss
### Distracting users with animation
### Animation getting in the way of completing the task
Animation preventing a toolbar icon to respond to tap
### When animation becomes a dark pattern. 
### A flashing countdown timer
### Slowly scaling background animation
### Using spring animation in a context that feels out of place

