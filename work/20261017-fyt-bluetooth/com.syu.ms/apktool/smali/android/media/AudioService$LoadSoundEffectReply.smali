.class Landroid/media/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadSoundEffectReply"
.end annotation


# instance fields
.field public mStatus:I

.field public final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$LoadSoundEffectReply;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method
