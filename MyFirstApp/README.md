# My First App

### 1.UIView로 원과 그림자 구현하기

-   UIView를 사용하여 뷰의 가운데에 빨간색 원을 구현하고, 그 원에 그림자 효과를 넣어보았다.
-   UIScreen.main.bounds.size.width 와 UIScreen.main.bounds.size.height 로 스크린 화면의 가로, 세로 크기를 구할 수 있다.
-   view.layer.cornerRadius 의 값으로 모서리를 둥글게 조절할 수 있다. 정사각형 모양으로 가정하고 한 변의 길이 / 2 의 값으로 view.layer.cornerRadius 값을 설정하면 원 모양이 된다.
-   circle.layer.shadowOpacity 로 그림자의 투명도를 조절한다.
-   circle.layer.shadowRadius 로 그림자의 반경을 조절한다.

 <br />
 <br />

-   수정전
```swift
...
   circle.frame = CGRect(x: centerX, y: centerY, width: 100, height: 100)
...
```

-   수정후

```swift
...
    // circle을 뷰의 정중앙으로 이동하기 위해 위치를 조정해 준다.
    circle.frame = CGRect(x: centerX - 50, y: centerY - 50, width: 100, height: 100)
...
```
