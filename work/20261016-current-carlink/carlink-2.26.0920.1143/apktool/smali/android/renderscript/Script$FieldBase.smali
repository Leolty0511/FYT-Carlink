.class public Landroid/renderscript/Script$FieldBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldBase"
.end annotation


# instance fields
.field protected mAllocation:Landroid/renderscript/Allocation;

.field protected mElement:Landroid/renderscript/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/renderscript/RenderScript;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    return-void
.end method

.method public init(Landroid/renderscript/RenderScript;II)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    or-int/lit8 p3, p3, 0x1

    .line 3
    invoke-static {p1, v0, p2, p3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    return-void
.end method

.method public updateAllocation()V
    .locals 0

    return-void
.end method
