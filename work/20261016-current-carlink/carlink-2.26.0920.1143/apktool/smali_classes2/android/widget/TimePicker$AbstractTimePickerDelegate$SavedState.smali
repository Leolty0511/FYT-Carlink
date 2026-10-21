.class public Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mIs24HourMode:Z

.field private final mMinute:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePicker$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iput p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    .line 5
    iput p3, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 6
    iput-boolean p4, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    .line 7
    iput p5, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .locals 1

    iget v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    return v0
.end method

.method public is24HourMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-boolean p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
