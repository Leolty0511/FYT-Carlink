.class Landroid/widget/ExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/widget/ExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFRESH:I = -0x1


# instance fields
.field public flPos:I

.field public gId:J

.field public gPos:I

.field public lastChildFlPos:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$GroupMetadata;-><init>()V

    .line 2
    iput p0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 3
    iput p1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 4
    iput p2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 5
    iput-wide p3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/widget/ExpandableListConnector$GroupMetadata;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget p1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, p1

    return v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector$GroupMetadata;->compareTo(Landroid/widget/ExpandableListConnector$GroupMetadata;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
