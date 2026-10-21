.class final Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;
.super Landroid/view/ViewStructure$HtmlInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtmlInfoNodeBuilder"
.end annotation


# instance fields
.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$300(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public build()Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 2

    .line 2
    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v0

    return-object v0
.end method
