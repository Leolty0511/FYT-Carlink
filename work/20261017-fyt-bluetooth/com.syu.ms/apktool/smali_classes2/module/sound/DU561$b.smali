.class public Lmodule/sound/DU561$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodule/sound/DU561;->w0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lmodule/sound/DU561;


# direct methods
.method public constructor <init>(Lmodule/sound/DU561;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmodule/sound/DU561$b;->b:Lmodule/sound/DU561;

    iput-object p2, p0, Lmodule/sound/DU561$b;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/DU561$b;->b:Lmodule/sound/DU561;

    iget-object v1, p0, Lmodule/sound/DU561$b;->a:[I

    invoke-virtual {v0, v1}, Lmodule/sound/DU561;->Z1([I)V

    return-void
.end method
