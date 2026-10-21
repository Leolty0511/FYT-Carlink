.class final Landroid/view/textclassifier/SmartSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    }
.end annotation


# static fields
.field static final HINT_FLAG_EMAIL:I = 0x2

.field static final HINT_FLAG_URL:I = 0x1


# instance fields
.field private final mCtx:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "textclassifier"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/textclassifier/SmartSelection;->nativeNew(I)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    .line 9
    .line 10
    return-void
.end method

.method public static getLanguage(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/SmartSelection;->nativeGetLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion(I)I
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/SmartSelection;->nativeGetVersion(I)I

    move-result p0

    return p0
.end method

.method private static native nativeClassifyText(JLjava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetLanguage(I)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(I)I
.end method

.method private static native nativeNew(I)J
.end method

.method private static native nativeSuggest(JLjava/lang/String;II)[I
.end method


# virtual methods
.method public classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    .locals 6

    iget-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/textclassifier/SmartSelection;->nativeClassifyText(JLjava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    invoke-static {v0, v1}, Landroid/view/textclassifier/SmartSelection;->nativeClose(J)V

    return-void
.end method

.method public suggest(Ljava/lang/String;II)[I
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/textclassifier/SmartSelection;->nativeSuggest(JLjava/lang/String;II)[I

    move-result-object p1

    return-object p1
.end method
