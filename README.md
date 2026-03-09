### App Session 8주차

> 담당 Core: 염정우

🔗 **[이번 주차 세션 블로그 자료 보기](https://velog.io/@yjw326/Flutter-Layout-%EA%B8%B0%EB%B3%B8-%EC%9B%90%EC%B9%99)**

## 이번 주에는

* Flutter 레이아웃의 핵심 원리 알아보기 (Constraints go down, Sizes go up)
* 빡빡한 제약(Tight Constraint)과 느슨한 제약(Loose Constraint)의 차이 이해하기
* `Column`과 `ListView`를 함께 쓸 때 발생하는 에러(`unbounded height`) 해결하기
* `Expanded`와 `SizedBox`를 활용해 화면 오버플로우(노란 빗금) 고치기

<br />

![GDGoC Header](resources/gdgoc_header.png)


<br />

---

이번 세션은 lib/main.dart 하나의 파일에서 코드를 변형해가며, **커밋(Commit) 순서대로** 플러터의 Constraint가 어떻게 동작하는지 눈으로 확인합니다.

### Commit 1: 파란 박스를 덮어버린 빨간 박스 (Tight Constraint)

부모 위젯이 자식에게 "무조건 내 크기에 맞춰!"라고 강제하는 빡빡한 제약(Tight Constraint) 상황을 확인합니다.

분명 100x100 크기를 줬지만, 화면을 꽉 채워버리는 플러터 특유의 렌더링 방식을 이해합니다.

<br>

### Commit 2: Center 위젯으로 빡빡한 제약 풀어주기 (Loose Constraint)

Center 위젯이 어떻게 부모의 제약을 흡수하고, 자식에게 **느슨한 제약(Loose Constraint)을** 내려주는지 알아봅니다.

비로소 자식 위젯이 자신이 원하는 크기(100x100)를 가질 수 있게 됩니다!

<br>

### Commit 3: 무한대와 무한대의 충돌 (Unbounded Height 에러)

세로로 무한한 자유를 주는 Column 안에 스크롤을 위해 끝없이 길어지려는 ListView를 넣었을 때 발생하는 White Screen 현상을 재현합니다.

디버그 콘솔에서 Vertical viewport was given unbounded height 에러의 원인을 분석합니다.

<br>

### Commit 4: 제약 번역기 Expanded의 등장

무한대의 폭주를 막기 위해 Expanded를 투입합니다.

남은 물리적 공간을 계산하여 자식(ListView)에게 **Bounded Constraint를** 내려주는 원리를 이해합니다.

<br>

### Commit 5: [실전 핸즈온] 망가진 포켓몬 도감 고치기

가로 방향(Row)에서 텍스트가 화면을 뚫고 나가는 RenderFlex overflowed (노란 빗금) 상황이 주어집니다!

배운 제약 컨트롤 위젯(Expanded, SizedBox 등)을 활용해 15분 동안 직접 카드의 레이아웃을 예쁘게 수리해 봅니다.

