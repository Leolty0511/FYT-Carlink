.class public Landroid/filterpacks/text/ToUpperCase;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "mixedcase"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "uppercase"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    const-string/jumbo v1, "mixedcase"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "uppercase"

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
