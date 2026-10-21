.class public Landroid/filterpacks/text/StringSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stringValue"
    .end annotation
.end field


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
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Landroid/filterpacks/text/StringSource;->mString:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "string"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
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
    iput-object v0, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    const-string/jumbo v1, "string"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
