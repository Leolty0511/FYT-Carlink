.class public Landroid/media/effect/effects/BackDropperEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "SourceFile"


# static fields
.field private static final mGraphDefinition:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.videoproc;\n@import android.filterpacks.videosrc;\n\n@filter GLTextureSource foreground {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = true;\n}\n\n@filter MediaSource background {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = false;\n  sourceIsUrl = true;\n}\n\n@filter BackDropperFilter replacer {\n  autowbToggle = 1;\n}\n\n@filter GLTextureTarget output {\n  texId = 0;\n}\n\n@connect foreground[frame]  => replacer[video];\n@connect background[video]  => replacer[background];\n@connect replacer[video]    => output[frame];\n"


# instance fields
.field private mEffectListener:Landroid/media/effect/EffectUpdateListener;

.field private mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v3, "@import android.filterpacks.base;\n@import android.filterpacks.videoproc;\n@import android.filterpacks.videosrc;\n\n@filter GLTextureSource foreground {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = true;\n}\n\n@filter MediaSource background {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = false;\n  sourceIsUrl = true;\n}\n\n@filter BackDropperFilter replacer {\n  autowbToggle = 1;\n}\n\n@filter GLTextureTarget output {\n  texId = 0;\n}\n\n@connect foreground[frame]  => replacer[video];\n@connect background[video]  => replacer[background];\n@connect replacer[video]    => output[frame];\n"

    .line 2
    .line 3
    const-string v4, "foreground"

    .line 4
    .line 5
    const-string/jumbo v5, "output"

    .line 6
    .line 7
    .line 8
    const-class v6, Landroid/filterfw/core/OneShotScheduler;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    .line 18
    .line 19
    new-instance p1, Landroid/media/effect/effects/BackDropperEffect$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Landroid/media/effect/effects/BackDropperEffect$1;-><init>(Landroid/media/effect/effects/BackDropperEffect;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect;->mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 27
    .line 28
    const-string/jumbo p2, "replacer"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string/jumbo p2, "learningDoneListener"

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 39
    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic access$000(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;
    .locals 0

    iget-object p0, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    return-object p0
.end method


# virtual methods
.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "source"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "background"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string/jumbo v0, "sourceUrl"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "context"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v0, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    return-void
.end method
