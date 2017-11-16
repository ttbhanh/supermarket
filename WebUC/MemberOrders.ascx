<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberOrders.ascx.cs" Inherits="_1685009.WebUC.MemberOrders" %>

<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <asp:Repeater ID="RepeaterOrders" runat="server">
        <ItemTemplate>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="heading<%# Container.ItemIndex %>">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<%# Container.ItemIndex %>" aria-expanded="true" aria-controls="collapse<%# Container.ItemIndex %>">
                            <%# Container.ItemIndex + 1 %>. Order No #<%# Eval("Id") %> (<%# Eval("OrderDatetime") %> - <%# Eval("OrderStatus.Name") %>)
                        </a>
                    </h4>
                </div>
                <div id="collapse<%# Container.ItemIndex %>" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="heading<%# Container.ItemIndex %>">
                    <div class="panel-body">
                        <asp:HiddenField ID="HiddenFieldOrderId" runat="server" Value='<%# Eval("Id") %>' />
                        
                        <div class="items">
                            <div class="col-md-9">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:SqlDataSource ID="SqlDataSourceOrderDetail" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT p.[Id], p.[Name], d.[Quantity], d.[TotalPrice] FROM [OrderDetail] d, [Product] p WHERE (d.[OrderId] = @OrderId AND d.[ProductId] = p.[Id])">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="HiddenFieldOrderId" PropertyName="Value" Name="OrderId" Type="Int32"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:Repeater ID="RepeaterOrderDetail" runat="server" DataSourceID="SqlDataSourceOrderDetail">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Single.aspx?Id=" + Eval("Id") %>'><%# Eval("Name") %></asp:HyperLink>
                                                    </td>
                                                    <td><%# Eval("Quantity") %></td>
                                                    <td><%# ToCurrency(Eval("TotalPrice")) %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-3">
                                <div style="text-align: center;">
                                    <h3>Order Total</h3>
                                    <h3>
                                        <label style="color: green;"><%# ToCurrency(Eval("OrderTotal")) %></label>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
