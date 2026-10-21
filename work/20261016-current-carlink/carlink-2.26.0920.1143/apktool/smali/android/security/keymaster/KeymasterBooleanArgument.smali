.class Landroid/security/keymaster/KeymasterBooleanArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "SourceFile"


# instance fields
.field public final value:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/security/keymaster/KeymasterBooleanArgument;->value:Z

    .line 3
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad bool tag "

    .line 5
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroid/security/keymaster/KeymasterBooleanArgument;->value:Z

    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method
