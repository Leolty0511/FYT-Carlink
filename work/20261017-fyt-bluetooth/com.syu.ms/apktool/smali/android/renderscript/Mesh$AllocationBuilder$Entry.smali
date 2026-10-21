.class Landroid/renderscript/Mesh$AllocationBuilder$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh$AllocationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public a:Landroid/renderscript/Allocation;

.field public prim:Landroid/renderscript/Mesh$Primitive;

.field public final synthetic this$0:Landroid/renderscript/Mesh$AllocationBuilder;


# direct methods
.method public constructor <init>(Landroid/renderscript/Mesh$AllocationBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->this$0:Landroid/renderscript/Mesh$AllocationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
