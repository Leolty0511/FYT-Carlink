.class public Landroid/accessibilityservice/GestureDescription$GestureStep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureStep"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numTouchPoints:I

.field public timeSinceGestureStart:J

.field public touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/accessibilityservice/GestureDescription$GestureStep$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 3
    iput p3, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 4
    new-array p1, p3, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object p1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 5
    iget-object p2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v1, p4, p1

    invoke-direct {v0, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 8
    const-class v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 10
    :cond_0
    array-length v1, p1

    :goto_0
    iput v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 11
    new-array v1, v1, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 12
    :goto_1
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v1, :cond_1

    .line 13
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, p1, v0

    check-cast v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
