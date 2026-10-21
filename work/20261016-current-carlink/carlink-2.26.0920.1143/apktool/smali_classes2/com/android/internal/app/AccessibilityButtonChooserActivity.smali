.class public Lcom/android/internal/app/AccessibilityButtonChooserActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;,
        Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;
    }
.end annotation


# static fields
.field private static final MAGNIFICATION_COMPONENT_ID:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"


# instance fields
.field private mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

.field private mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/android/internal/app/AccessibilityButtonChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method private static getServiceAccessibilityButtonTargets(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "accessibility"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 45
    .line 46
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 47
    .line 48
    and-int/lit16 v3, v3, 0x100

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    new-instance v3, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    .line 53
    .line 54
    invoke-direct {v3, p0, v2}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;-><init>(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-object v1
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    invoke-direct {p0, p1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->onTargetSelected(Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;)V

    return-void
.end method

.method private onTargetSelected(Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility_button_target_component"

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x1090018

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x1020206

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/android/internal/app/a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/internal/app/a;-><init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "accessibility_button_target_component"

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const p1, 0x102016b

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    new-instance p1, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    .line 59
    .line 60
    const v1, 0x1040042

    .line 61
    .line 62
    .line 63
    const v2, 0x10802ef

    .line 64
    .line 65
    .line 66
    const-string v3, "com.android.server.accessibility.MagnificationController"

    .line 67
    .line 68
    invoke-direct {p1, p0, v3, v1, v2}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getServiceAccessibilityButtonTargets(Landroid/content/Context;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "accessibility_display_magnification_navbar_enabled"

    .line 84
    .line 85
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 v0, 0x1

    .line 90
    if-ne p1, v0, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 v0, 0x2

    .line 106
    if-ge p1, v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    :cond_3
    const p1, 0x102016a

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/GridView;

    .line 119
    .line 120
    new-instance v0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;-><init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;Lcom/android/internal/app/AccessibilityButtonChooserActivity$1;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/android/internal/app/a;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/android/internal/app/a;-><init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
