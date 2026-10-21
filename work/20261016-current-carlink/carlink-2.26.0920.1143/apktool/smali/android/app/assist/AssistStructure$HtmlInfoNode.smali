.class final Landroid/app/assist/AssistStructure$HtmlInfoNode;
.super Landroid/view/ViewStructure$HtmlInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtmlInfoNode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNames:[Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$300(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 6
    iput-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$500(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->access$500(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-ge v0, v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Landroid/util/Pair;

    .line 26
    .line 27
    aget-object v1, v1, v0

    .line 28
    .line 29
    iget-object v3, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object v3, v3, v0

    .line 32
    .line 33
    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    .line 45
    .line 46
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
