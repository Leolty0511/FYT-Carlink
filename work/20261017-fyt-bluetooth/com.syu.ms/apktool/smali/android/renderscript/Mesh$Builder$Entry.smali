.class Landroid/renderscript/Mesh$Builder$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public e:Landroid/renderscript/Element;

.field public prim:Landroid/renderscript/Mesh$Primitive;

.field public size:I

.field public t:Landroid/renderscript/Type;

.field public final synthetic this$0:Landroid/renderscript/Mesh$Builder;

.field public usage:I


# direct methods
.method public constructor <init>(Landroid/renderscript/Mesh$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder$Entry;->this$0:Landroid/renderscript/Mesh$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
