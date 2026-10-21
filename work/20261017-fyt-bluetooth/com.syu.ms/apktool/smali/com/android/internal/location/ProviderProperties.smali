.class public final Lcom/android/internal/location/ProviderProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/location/ProviderProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:I

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/location/ProviderProperties$a;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderProperties$a;-><init>()V

    sput-object v0, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZZZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/location/ProviderProperties;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/internal/location/ProviderProperties;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/internal/location/ProviderProperties;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/android/internal/location/ProviderProperties;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/android/internal/location/ProviderProperties;->f:Z

    .line 8
    iput-boolean p7, p0, Lcom/android/internal/location/ProviderProperties;->g:Z

    .line 9
    iput p8, p0, Lcom/android/internal/location/ProviderProperties;->h:I

    .line 10
    iput p9, p0, Lcom/android/internal/location/ProviderProperties;->i:I

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
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/android/internal/location/ProviderProperties;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/android/internal/location/ProviderProperties;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
