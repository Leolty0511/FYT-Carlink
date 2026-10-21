.class Landroid/view/VolumePanel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method public constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/view/VolumePanel;->access$402(Landroid/view/VolumePanel;I)I

    .line 2
    iget-object p1, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    invoke-static {p1}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Landroid/view/VolumePanel$3;->this$0:Landroid/view/VolumePanel;

    invoke-static {v0}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    return-void
.end method
