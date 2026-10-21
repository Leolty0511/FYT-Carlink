.class public final Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/MaterialTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private inputMode:I

.field private time:Lcom/google/android/material/timepicker/TimeModel;

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/TimeModel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->inputMode:I

    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I

    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$1000(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;

    move-result-object v0

    return-object v0
.end method

.method public setHour(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setHourOfDay(I)V

    return-object p0
.end method

.method public setInputMode(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->inputMode:I

    return-object p0
.end method

.method public setMinute(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3cL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    return-object p0
.end method

.method public setTimeFormat(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 6
    .line 7
    new-instance v2, Lcom/google/android/material/timepicker/TimeModel;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/TimeModel;->setHourOfDay(I)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public setTitleText(I)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I

    return-object p0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleText:Ljava/lang/CharSequence;

    return-object p0
.end method
