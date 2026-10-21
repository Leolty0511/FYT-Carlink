.class public Landroid/provider/SearchIndexableResource;
.super Landroid/provider/SearchIndexableData;
.source "SourceFile"


# instance fields
.field public xmlResId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/provider/SearchIndexableData;-><init>()V

    .line 2
    iput p1, p0, Landroid/provider/SearchIndexableData;->rank:I

    .line 3
    iput p2, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 4
    iput-object p3, p0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 5
    iput p4, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SearchIndexableResource["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/provider/SearchIndexableData;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", xmlResId: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
