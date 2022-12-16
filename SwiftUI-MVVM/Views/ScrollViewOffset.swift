struct UpdateNavigationBarOnScroll: View {
  @State var scrollOffset: CGFloat = .zero
  @State var scrollToTop = false

  private var hasScrolled: Bool {
    scrollOffset > 0
  }

  var body: some View {
    NavigationView {
      scrollView
        .navigationBarTitle(hasScrolled ? "Thanks!" : "Scroll, please!",
                            displayMode: .inline)
        .navigationBarItems(trailing: navBarButton)
    }
  }

  @ViewBuilder private var scrollView: some View {
    ObservableScrollView(scrollOffset: $scrol	lOffset) { proxy in
      LazyVStack {
        ForEach(0..<100) { index in
          Text("Row \(index)")
            .id(index)
        }
      }
      .onChange(of: scrollToTop) { newValue in
        if newValue {
          scrollToTop = false
          withAnimation {
            proxy.scrollTo(0, anchor: .top)
          }
        }
      }
    }
  }

  @ViewBuilder private var navBarButton: some View {
    if hasScrolled {
      Button("To top") {
        scrollToTop = true
      }
    } else {
      EmptyView()
    }
  }
}
