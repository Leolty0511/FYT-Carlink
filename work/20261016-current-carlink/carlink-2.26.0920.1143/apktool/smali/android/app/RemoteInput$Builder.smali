.class public final Landroid/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAllowedDataTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChoices:[Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Result key can\'t be null"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method private setFlag(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public build()Landroid/app/RemoteInput;
    .locals 9

    new-instance v8, Landroid/app/RemoteInput;

    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget v4, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    iget-object v5, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/util/ArraySet;Landroid/app/RemoteInput$1;)V

    return-object v8
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :goto_0
    return-object p0
.end method

.method public setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
    .locals 1

    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    invoke-direct {p0, v0, p1}, Landroid/app/RemoteInput$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 17
    .line 18
    aget-object v2, p1, v0

    .line 19
    .line 20
    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 0

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
