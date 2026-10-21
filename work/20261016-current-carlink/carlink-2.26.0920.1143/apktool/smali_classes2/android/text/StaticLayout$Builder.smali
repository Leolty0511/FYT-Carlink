.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mJustificationMode:I

.field mLeftIndents:[I

.field mLocales:Landroid/os/LocaleList;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    invoke-static {}, Landroid/text/StaticLayout;->access$000()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$1000(Landroid/text/StaticLayout$Builder;Landroid/os/LocaleList;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/text/StaticLayout$Builder;)V
    .locals 0

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method private getHyphenators(Landroid/os/LocaleList;)[J
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [J

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)Landroid/text/Hyphenator;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/text/Hyphenator;->getNativePtr()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    aput-wide v3, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v1
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/text/StaticLayout$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/text/StaticLayout$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 17
    .line 18
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 19
    .line 20
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 21
    .line 22
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 23
    .line 24
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 25
    .line 26
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 27
    .line 28
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 29
    .line 30
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 31
    .line 32
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 33
    .line 34
    const/high16 p0, 0x3f800000    # 1.0f

    .line 35
    .line 36
    iput p0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    iput p0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    iput-boolean p0, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 43
    .line 44
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 48
    .line 49
    const p0, 0x7fffffff

    .line 50
    .line 51
    .line 52
    iput p0, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    iput p0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 56
    .line 57
    iput p0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 58
    .line 59
    iput p0, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 60
    .line 61
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 66
    .line 67
    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 14
    .line 15
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private setLocales(Landroid/os/LocaleList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLocales:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->getHyphenators(Landroid/os/LocaleList;)[J

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v0, v1, v2, v3}, Landroid/text/StaticLayout;->access$300(JLjava/lang/String;[J)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLocales:Landroid/os/LocaleList;

    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public addMeasuredRun(II[F)V
    .locals 2

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$500(JII[F)V

    return-void
.end method

.method public addReplacementRun(IIF)V
    .locals 2

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$600(JIIF)V

    return-void
.end method

.method public addStyleRun(Landroid/text/TextPaint;IIZ)F
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/text/StaticLayout$Builder;->setLocales(Landroid/os/LocaleList;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    iget-wide v5, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 15
    .line 16
    move v7, p2

    .line 17
    move v8, p3

    .line 18
    move v9, p4

    .line 19
    invoke-static/range {v1 .. v9}, Landroid/text/StaticLayout;->access$400(JJJIIZ)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public build()Landroid/text/StaticLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/StaticLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$800(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public finish()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 12
    .line 13
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 14
    .line 15
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 8

    .line 1
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 2
    .line 3
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    move v1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    array-length v1, p1

    .line 11
    :goto_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    move v2, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    array-length v2, p2

    .line 16
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    new-array v4, v3, [I

    .line 21
    .line 22
    move v5, v0

    .line 23
    :goto_2
    if-ge v5, v3, :cond_4

    .line 24
    .line 25
    if-ge v5, v1, :cond_2

    .line 26
    .line 27
    aget v6, p1, v5

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    move v6, v0

    .line 31
    :goto_3
    if-ge v5, v2, :cond_3

    .line 32
    .line 33
    aget v7, p2, v5

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_3
    move v7, v0

    .line 37
    :goto_4
    add-int/2addr v6, v7

    .line 38
    aput v6, v4, v5

    .line 39
    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    iget-wide p1, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 44
    .line 45
    invoke-static {p1, p2, v4}, Landroid/text/StaticLayout;->access$200(J[I)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 2
    .line 3
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 4
    .line 5
    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 4
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1

    .line 1
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 2
    .line 3
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method
