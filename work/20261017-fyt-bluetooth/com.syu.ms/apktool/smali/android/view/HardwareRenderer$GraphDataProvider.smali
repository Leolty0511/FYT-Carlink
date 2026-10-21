.class abstract Landroid/view/HardwareRenderer$GraphDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "GraphDataProvider"
.end annotation


# static fields
.field public static final GRAPH_TYPE_BARS:I = 0x0

.field public static final GRAPH_TYPE_LINES:I = 0x1


# instance fields
.field public final synthetic this$0:Landroid/view/HardwareRenderer;


# direct methods
.method public constructor <init>(Landroid/view/HardwareRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/HardwareRenderer$GraphDataProvider;->this$0:Landroid/view/HardwareRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentFrame()I
.end method

.method public abstract getData()[F
.end method

.method public abstract getElementCount()I
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getGraphType()I
.end method

.method public abstract getHorizontaUnitMargin()I
.end method

.method public abstract getHorizontalUnitSize()I
.end method

.method public abstract getThreshold()F
.end method

.method public abstract getVerticalUnitSize()I
.end method

.method public abstract prepare(Landroid/util/DisplayMetrics;)V
.end method

.method public abstract setupCurrentFramePaint(Landroid/graphics/Paint;)V
.end method

.method public abstract setupGraphPaint(Landroid/graphics/Paint;I)V
.end method

.method public abstract setupThresholdPaint(Landroid/graphics/Paint;)V
.end method
