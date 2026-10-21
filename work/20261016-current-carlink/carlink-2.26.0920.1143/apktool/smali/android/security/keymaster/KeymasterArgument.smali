.class abstract Landroid/security/keymaster/KeymasterArgument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/keymaster/KeymasterArgument$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArgument$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument;->writeValue(Landroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract writeValue(Landroid/os/Parcel;)V
.end method
