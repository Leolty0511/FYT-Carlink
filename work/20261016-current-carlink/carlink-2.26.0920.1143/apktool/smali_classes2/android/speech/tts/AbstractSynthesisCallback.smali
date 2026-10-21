.class abstract Landroid/speech/tts/AbstractSynthesisCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# instance fields
.field protected final mClientIsUsingV2:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public errorCodeOnStop()I
    .locals 1

    iget-boolean v0, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public synthetic rangeStart(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/speech/tts/a;->a(Landroid/speech/tts/SynthesisCallback;III)V

    return-void
.end method

.method public abstract stop()V
.end method
