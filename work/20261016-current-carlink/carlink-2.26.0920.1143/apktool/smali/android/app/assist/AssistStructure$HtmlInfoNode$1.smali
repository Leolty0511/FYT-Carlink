.class final Landroid/app/assist/AssistStructure$HtmlInfoNode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure$HtmlInfoNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    invoke-direct {v1, v0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HtmlInfo attributes mismatch: names="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", values="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    const-string v0, "AssistStructure"

    .line 8
    invoke-static {v2, p1, v0}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 10
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    invoke-virtual {v1, v3, v4}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/app/assist/AssistStructure$HtmlInfoNode;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method
