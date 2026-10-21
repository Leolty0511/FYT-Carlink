.class Landroid/hardware/cas/V1_0/ICas$Stub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/cas/V1_0/ICas$openSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/cas/V1_0/ICas$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/cas/V1_0/ICas$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/hardware/cas/V1_0/ICas$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/cas/V1_0/ICas$Stub$1;->this$0:Landroid/hardware/cas/V1_0/ICas$Stub;

    iput-object p2, p0, Landroid/hardware/cas/V1_0/ICas$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/cas/V1_0/ICas$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/hardware/cas/V1_0/ICas$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/hardware/cas/V1_0/ICas$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/hardware/cas/V1_0/ICas$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/HwParcel;->send()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
