.class Landroid/preference/MultiCheckPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiCheckPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MultiCheckPreference;


# direct methods
.method public constructor <init>(Landroid/preference/MultiCheckPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    iget-object p1, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    invoke-static {p1}, Landroid/preference/MultiCheckPreference;->access$000(Landroid/preference/MultiCheckPreference;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void
.end method
