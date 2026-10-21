.class public Lcom/google/android/projection/sink/ui/SystemUiHider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HIDE_DELAY_MILLIS:I = 0x7d0


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/sink/ui/SystemUiHider$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/ui/SystemUiHider$2;-><init>(Lcom/google/android/projection/sink/ui/SystemUiHider;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mHideRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mView:Landroid/view/View;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/ui/SystemUiHider;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/SystemUiHider;->hideSystemUi()V

    return-void
.end method

.method private hideSystemUi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mView:Landroid/view/View;

    const/16 v1, 0xc04

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public delay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mHideRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mHideRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v2, 0x7d0

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setup()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/SystemUiHider;->hideSystemUi()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/SystemUiHider;->mView:Landroid/view/View;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/projection/sink/ui/SystemUiHider$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/SystemUiHider$1;-><init>(Lcom/google/android/projection/sink/ui/SystemUiHider;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
