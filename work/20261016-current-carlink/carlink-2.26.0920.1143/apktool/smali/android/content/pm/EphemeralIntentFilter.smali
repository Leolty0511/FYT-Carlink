.class public final Landroid/content/pm/EphemeralIntentFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/EphemeralIntentFilter$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralIntentFilter$1;-><init>()V

    sput-object v0, Landroid/content/pm/EphemeralIntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstantAppIntentFilter;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/InstantAppIntentFilter;

    iput-object p1, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/pm/InstantAppIntentFilter;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/InstantAppIntentFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppIntentFilter()Landroid/content/pm/InstantAppIntentFilter;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralIntentFilter;->mInstantAppIntentFilter:Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
