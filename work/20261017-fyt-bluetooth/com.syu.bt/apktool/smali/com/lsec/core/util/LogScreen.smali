.class public Lcom/lsec/core/util/LogScreen;
.super Ljava/lang/Object;
.source "LogScreen.java"


# static fields
.field public static final LOG_DIR_PATH:Ljava/lang/String; = "/sdcard/log"

.field static instance:Lcom/lsec/core/util/LogScreen; = null

.field public static mColor:I = 0x0

.field public static mContext:Landroid/content/Context; = null

.field public static mGravity:I = 0x0

.field public static mTypeLayoutParams:I = 0x0

.field public static final strThreadCheck:Ljava/lang/String; = "LogPreview_Work"


# instance fields
.field checkLogPreview:Ljava/lang/Runnable;

.field logPreview:Landroid/widget/TextView;

.field logs:Ljava/lang/StringBuffer;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field rootView:Landroid/widget/FrameLayout;

.field wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x7d3

    sput v0, Lcom/lsec/core/util/LogScreen;->mTypeLayoutParams:I

    .line 30
    const v0, -0x7fff0001

    sput v0, Lcom/lsec/core/util/LogScreen;->mColor:I

    .line 31
    const/16 v0, 0x55

    sput v0, Lcom/lsec/core/util/LogScreen;->mGravity:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/util/LogScreen;->logs:Ljava/lang/StringBuffer;

    .line 40
    new-instance v0, Lcom/lsec/core/util/LogScreen$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/util/LogScreen$1;-><init>(Lcom/lsec/core/util/LogScreen;)V

    iput-object v0, p0, Lcom/lsec/core/util/LogScreen;->checkLogPreview:Ljava/lang/Runnable;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lsec/core/util/LogScreen;->wm:Landroid/view/WindowManager;

    .line 36
    invoke-virtual {p0}, Lcom/lsec/core/util/LogScreen;->init()V

    .line 37
    const-string v0, "LogPreview_Work"

    iget-object v1, p0, Lcom/lsec/core/util/LogScreen;->checkLogPreview:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/util/ThreadMap;->startThread(Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 38
    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/lsec/core/util/LogScreen;

    sget-object v1, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lsec/core/util/LogScreen;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    .line 87
    :cond_0
    sget-object v0, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    iget-object v0, v0, Lcom/lsec/core/util/LogScreen;->logs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5000

    if-lt v0, v1, :cond_1

    .line 88
    sget-object v0, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    iget-object v0, v0, Lcom/lsec/core/util/LogScreen;->logs:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x1000

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    :cond_1
    sget-object v0, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    iget-object v0, v0, Lcom/lsec/core/util/LogScreen;->logs:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-static {}, Lcom/lsec/core/util/HandlerUI;->getInstance()Lcom/lsec/core/util/HandlerUI;

    move-result-object v0

    new-instance v1, Lcom/lsec/core/util/LogScreen$2;

    invoke-direct {v1}, Lcom/lsec/core/util/LogScreen$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lsec/core/util/HandlerUI;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 62
    sget v0, Lcom/lsec/core/util/LogScreen;->mTypeLayoutParams:I

    const/16 v2, 0x7d3

    if-ne v0, v2, :cond_0

    .line 63
    const/16 v0, 0x7f6

    sput v0, Lcom/lsec/core/util/LogScreen;->mTypeLayoutParams:I

    .line 66
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 67
    sget v5, Lcom/lsec/core/util/LogScreen;->mTypeLayoutParams:I

    .line 68
    const/16 v6, 0x38

    .line 69
    const/4 v7, 0x1

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 66
    iput-object v0, p0, Lcom/lsec/core/util/LogScreen;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 71
    new-instance v0, Landroid/widget/FrameLayout;

    sget-object v2, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lsec/core/util/LogScreen;->rootView:Landroid/widget/FrameLayout;

    .line 73
    new-instance v0, Landroid/widget/TextView;

    sget-object v2, Lcom/lsec/core/util/LogScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    sget v2, Lcom/lsec/core/util/LogScreen;->mGravity:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    sget v2, Lcom/lsec/core/util/LogScreen;->mColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen;->rootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method
