.class Landroid/widget/DoubleDigitManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DoubleDigitManager;->reportDigit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DoubleDigitManager;


# direct methods
.method public constructor <init>(Landroid/widget/DoubleDigitManager;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/DoubleDigitManager;->access$000(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/widget/DoubleDigitManager;->access$100(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/widget/DoubleDigitManager;->access$000(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {v0, v1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Landroid/widget/DoubleDigitManager;->access$002(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
