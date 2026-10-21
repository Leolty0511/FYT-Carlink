.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeSwitchingController"


# instance fields
.field private mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method private constructor <init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p0

    return p0
.end method

.method private static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    :goto_0
    return p0
.end method

.method public static createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    .locals 1

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->dump(Landroid/util/Printer;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "    mController=null"

    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 22
    .line 23
    return-void
.end method
