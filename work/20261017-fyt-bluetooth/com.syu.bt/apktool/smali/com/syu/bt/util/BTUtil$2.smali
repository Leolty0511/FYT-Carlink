.class Lcom/syu/bt/util/BTUtil$2;
.super Ljava/lang/Object;
.source "BTUtil.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/BTUtil;->getBtTone(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$voiceId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/syu/bt/util/BTUtil$2;->val$voiceId:I

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 980
    if-nez p3, :cond_0

    .line 987
    iget v1, p0, Lcom/syu/bt/util/BTUtil$2;->val$voiceId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcom/syu/bt/util/BTUtil;->playId:I

    .line 990
    :cond_0
    return-void
.end method
