.class Landroid/app/AppOpsManager$1;
.super Lj/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/app/AppOpsManager;

.field public final synthetic val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/AppOpsManager$1;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lj/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v1, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/app/AppOpsManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-static {}, Landroid/app/AppOpsManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-interface {v0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
