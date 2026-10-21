.class public final Lf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lf/r;


# direct methods
.method public constructor <init>(Lf/r;)V
    .locals 0

    iput-object p1, p0, Lf/q;->b:Lf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/q;->b:Lf/r;

    .line 2
    .line 3
    iget-object p2, p1, Lf/r;->d:Lf/t;

    .line 4
    .line 5
    iget-object p2, p2, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 10
    .line 11
    iget v0, p1, Lf/r;->b:I

    .line 12
    .line 13
    iget p1, p1, Lf/r;->c:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
