.class public Landroid/speech/tts/TextToSpeech$EngineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineInfo"
.end annotation


# instance fields
.field public icon:I

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public priority:I

.field public system:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EngineInfo{name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v2, "}"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
