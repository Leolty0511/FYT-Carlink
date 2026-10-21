.class public Landroidx/constraintlayout/core/Metrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public additionalMeasures:J

.field public barrierConnectionResolved:J

.field public bfs:J

.field public centerConnectionResolved:J

.field public chainConnectionResolved:J

.field public constraints:J

.field public determineGroups:J

.field public errors:J

.field public extravariables:J

.field public fullySolved:J

.field public graphOptimizer:J

.field public graphSolved:J

.field public grouping:J

.field public infeasibleDetermineGroups:J

.field public iterations:J

.field public lastTableSize:J

.field public layouts:J

.field public linearSolved:J

.field public matchConnectionResolved:J

.field public maxRows:J

.field public maxTableSize:J

.field public maxVariables:J

.field public measuredMatchWidgets:J

.field public measuredWidgets:J

.field public measures:J

.field public measuresLayoutDuration:J

.field public measuresWidgetsDuration:J

.field public measuresWrap:J

.field public measuresWrapInfeasible:J

.field public minimize:J

.field public minimizeGoal:J

.field public nonresolvedWidgets:J

.field public oldresolvedWidgets:J

.field public optimize:J

.field public pivots:J

.field public problematicLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolutions:J

.field public resolvedWidgets:J

.field public simpleconstraints:J

.field public slackvariables:J

.field public tableSizeIncrease:J

.field public variables:J

.field public widgets:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    .line 4
    .line 5
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->additionalMeasures:J

    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolutions:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    .line 18
    .line 19
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    .line 22
    .line 23
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    .line 24
    .line 25
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    .line 26
    .line 27
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    .line 28
    .line 29
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->optimize:J

    .line 30
    .line 31
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->iterations:J

    .line 32
    .line 33
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 34
    .line 35
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->bfs:J

    .line 36
    .line 37
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->variables:J

    .line 38
    .line 39
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->errors:J

    .line 40
    .line 41
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    .line 42
    .line 43
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    .line 44
    .line 45
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    .line 48
    .line 49
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    .line 50
    .line 51
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolvedWidgets:J

    .line 52
    .line 53
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->oldresolvedWidgets:J

    .line 54
    .line 55
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    .line 56
    .line 57
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->centerConnectionResolved:J

    .line 58
    .line 59
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->matchConnectionResolved:J

    .line 60
    .line 61
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->chainConnectionResolved:J

    .line 62
    .line 63
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->barrierConnectionResolved:J

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\n*** Metrics ***\nmeasures: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nmeasuresWrap: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrap:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nmeasuresWrapInfeasible: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrapInfeasible:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\ndetermineGroups: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->determineGroups:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\ninfeasibleDetermineGroups: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->infeasibleDetermineGroups:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\ngraphOptimizer: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\nwidgets: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\ngraphSolved: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\nlinearSolved: "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    .line 89
    .line 90
    const-string v3, "\n"

    .line 91
    .line 92
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
