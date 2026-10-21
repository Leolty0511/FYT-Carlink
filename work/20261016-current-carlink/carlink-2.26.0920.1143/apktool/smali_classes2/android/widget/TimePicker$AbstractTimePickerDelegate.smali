.class abstract Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mAutofilledValue:J

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegator:Landroid/widget/TimePicker;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/widget/d;->x(Landroid/icu/util/Calendar;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {p1}, Landroid/widget/d;->A(Landroid/icu/util/Calendar;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-interface {p0, v2, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setDate(II)V

    .line 32
    .line 33
    .line 34
    iput-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :goto_0
    invoke-static {}, Landroid/widget/TimePicker;->access$000()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " could not be autofilled into "

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0}, Landroid/widget/TimePicker$TimePickerDelegate;->getHour()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Landroid/widget/d;->C(Landroid/icu/util/Calendar;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Landroid/widget/TimePicker$TimePickerDelegate;->getMinute()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v0, v1}, Landroid/widget/d;->D(Landroid/icu/util/Calendar;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public resetAutofilledValue()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    return-void
.end method

.method public setAutoFillChangeListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
