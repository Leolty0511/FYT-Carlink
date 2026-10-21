.class public final Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field public final colorRGBA:I

.field public final endChar:I

.field public final fontID:I

.field public final fontSize:I

.field public final isBold:Z

.field public final isItalic:Z

.field public final isUnderlined:Z

.field public final startChar:I


# direct methods
.method public constructor <init>(IIIZZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/media/TimedText$Style;->startChar:I

    .line 3
    iput p2, p0, Landroid/media/TimedText$Style;->endChar:I

    .line 4
    iput p3, p0, Landroid/media/TimedText$Style;->fontID:I

    .line 5
    iput-boolean p4, p0, Landroid/media/TimedText$Style;->isBold:Z

    .line 6
    iput-boolean p5, p0, Landroid/media/TimedText$Style;->isItalic:Z

    .line 7
    iput-boolean p6, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    .line 8
    iput p7, p0, Landroid/media/TimedText$Style;->fontSize:I

    .line 9
    iput p8, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    return-void
.end method
