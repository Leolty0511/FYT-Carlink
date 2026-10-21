.class public final Lf/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Landroid/hardware/usb/UsbDevice;

.field public final synthetic c:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    iput-object p1, p0, Lf/f0;->c:Lcom/syu/carlink/auto/AutoFragment;

    iput-object p2, p0, Lf/f0;->b:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/f0;->c:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lcom/google/android/projection/sink/R$id;->surface:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lf/f0;->b:Landroid/hardware/usb/UsbDevice;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/syu/carlink/auto/AutoFragment;->f(Landroid/hardware/usb/UsbDevice;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
