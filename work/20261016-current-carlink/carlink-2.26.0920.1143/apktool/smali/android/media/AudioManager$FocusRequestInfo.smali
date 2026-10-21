.class Landroid/media/AudioManager$FocusRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusRequestInfo"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mRequest:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/media/AudioFocusRequest;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method
