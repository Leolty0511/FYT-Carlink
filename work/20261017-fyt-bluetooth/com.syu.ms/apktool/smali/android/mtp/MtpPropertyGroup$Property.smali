.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Property"
.end annotation


# instance fields
.field public code:I

.field public column:I

.field public final synthetic this$0:Landroid/mtp/MtpPropertyGroup;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 3
    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 4
    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    return-void
.end method
