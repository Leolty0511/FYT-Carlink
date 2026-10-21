.class abstract Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CalendarView$CalendarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractCalendarViewDelegate"
.end annotation


# static fields
.field protected static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field protected static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/CalendarView;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getFocusedMonthDateColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 11
    .line 12
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 0

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 0

    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 0

    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 0

    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 0

    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 0

    return-void
.end method
