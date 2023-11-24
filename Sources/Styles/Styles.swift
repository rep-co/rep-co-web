public enum Classes {
  public enum Color {
    public enum Background {
      public static let primary: Class = "col-bg-primary"
    }

    public enum Foreground {
      public static let primary: Class = "col-fg-primary"
      public static let secondary: Class = "col-fg-secondary"
    }
  }

  public enum Text {
    public enum Weight {
      public static let bold: Class = "text-weight-bold"
      public static let normal: Class = "text-weight-normal"
    }

    public enum Size {
      public static let rem1_0: Class = "text-sz-rem1_0"
      public static let rem1_5: Class = "text-sz-rem1_5"
      public static let rem2_0: Class = "text-sz-rem2_0"
      public static let rem2_5: Class = "text-sz-rem2_5"
    }
  }

  public enum Flex {
    public enum Justify {
      public static let start: Class = "flex-justify-start"
      public static let center: Class = "flex-justify-center"
    }

    public enum Items {
      public static let start: Class = "flex-items-start"
      public static let center: Class = "flex-items-center"
    }
  }

  public enum Display {
    public static let block: Class = "disp-block"
    public static let inline: Class = "disp-inline"
    public static let flex: Class = "disp-flex"
    public static let none: Class = "disp-none"
  }
}
