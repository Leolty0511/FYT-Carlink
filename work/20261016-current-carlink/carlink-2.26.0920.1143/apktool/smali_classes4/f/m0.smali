.class public final Lf/m0;
.super Lcom/google/android/projection/sink/InstrumentClusterListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/m0;->a:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Lcom/google/android/projection/sink/InstrumentClusterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m0;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iput p1, v0, Lcom/syu/carlink/auto/AutoFragment;->H:I

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/google/android/projection/sink/InstrumentClusterListener;->onStatus(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
