.class Landroid/widget/DoubleDigitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DoubleDigitManager$CallBack;
    }
.end annotation


# instance fields
.field private intermediateDigit:Ljava/lang/Integer;

.field private final mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

.field private final timeoutInMillis:J


# direct methods
.method public constructor <init>(JLandroid/widget/DoubleDigitManager$CallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    .line 5
    .line 6
    iput-object p3, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;
    .locals 0

    iget-object p0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-object p0
.end method


# virtual methods
.method public reportDigit(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Landroid/widget/DoubleDigitManager$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Landroid/widget/DoubleDigitManager$1;-><init>(Landroid/widget/DoubleDigitManager;)V

    .line 20
    .line 21
    .line 22
    iget-wide v3, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitIntermediate(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iput-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-interface {v2, v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->twoDigitsFinal(II)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iput-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method
