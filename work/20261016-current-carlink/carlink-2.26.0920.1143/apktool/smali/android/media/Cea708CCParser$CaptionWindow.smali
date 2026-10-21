.class public Landroid/media/Cea708CCParser$CaptionWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindow"
.end annotation


# instance fields
.field public final anchorHorizontal:I

.field public final anchorId:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:Z

.field public final id:I

.field public final penStyle:I

.field public final priority:I

.field public final relativePositioning:Z

.field public final rowCount:I

.field public final rowLock:Z

.field public final visible:Z

.field public final windowStyle:I


# direct methods
.method public constructor <init>(IZZZIZIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    .line 5
    .line 6
    iput-boolean p2, p0, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowLock:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnLock:Z

    .line 11
    .line 12
    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindow;->priority:I

    .line 13
    .line 14
    iput-boolean p6, p0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    .line 15
    .line 16
    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    .line 17
    .line 18
    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    .line 19
    .line 20
    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    .line 21
    .line 22
    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    .line 23
    .line 24
    iput p11, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    .line 25
    .line 26
    iput p12, p0, Landroid/media/Cea708CCParser$CaptionWindow;->penStyle:I

    .line 27
    .line 28
    iput p13, p0, Landroid/media/Cea708CCParser$CaptionWindow;->windowStyle:I

    .line 29
    .line 30
    return-void
.end method
